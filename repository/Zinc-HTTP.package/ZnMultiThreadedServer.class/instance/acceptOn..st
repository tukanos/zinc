private
acceptOn: listeningSocket
	| clientSocket |
	self isUsingLimitedAcceptStrategy
		ifTrue: [
			"Wait until there is room to accept a connection.
			If we time out, return nil to loop"
			(self availableConnections waitTimeoutSeconds: self acceptWaitTimeout)
				ifTrue: [ ^ nil ] ].
	clientSocket := listeningSocket waitForAcceptFor: self acceptWaitTimeout.
	^ clientSocket
		ifNil: [
			self isUsingLimitedAcceptStrategy
				ifTrue: [ 
					"The timeout expired and no connection was accepted, give back the available connection slot"
					self availableConnections signal ].
			nil ]
		ifNotNil: [ clientSocket ]