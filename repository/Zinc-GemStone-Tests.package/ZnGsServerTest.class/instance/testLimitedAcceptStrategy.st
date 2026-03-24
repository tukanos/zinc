testing
testLimitedAcceptStrategy	
	self
		withServerLimitedAcceptStrategy: (Dictionary newFromPairs: { #maximumNumberOfConcurrentConnections:. 4.
																	 #acceptStrategy:. #limited })
		do: [ :server |
		| client clients |
		clients := (1 to: 4) collect: [ :each |
			ZnClient new
				url: server localUrl;
				addPathSegment: #random;
				clientId: ('client-{1}' format: { each });
				timeout: 1;
				enforceHttpSuccess;
				get;
				yourself ].
		client := ZnClient new
			url: server localUrl;
			addPathSegment: #random;
			clientId: 'client-5';
			timeout: 1;
			yourself.

		"Since there are now 4 open connections, new connection will be rejected and we time out"
		[ client get ]
			on: Error
			do: [ :exception |
					self assert: (exception isKindOf: ConnectionTimedOut).
					self assert: exception details equals: 'Data receive timed out.' ].
		"Closing all 4 open connections"
		clients do: [ :each | each close. self deny: each isConnected ].
		client get.
		"now the request passes"
		self assert: client isSuccess.
		client close.
		self deny: client isConnected.

		"now try closing one of the four open clients while we are waiting"
		clients do: [ :each | each get ].
		 [ (Delay forMilliseconds: 500) wait. clients first close ] fork.

		client get.
		"this passes while we are waiting since a connection becomes available"
		self assert: client isSuccess.
		client close.
		clients do: [ :each | each close ] ]