testing
testCustomServerString
	self withServerString: 'foobar server'
		do: [ :server |
			| client |
			(client := ZnClient new)
				get: server localUrl;
				close.
			self assert: (client response headers at: 'Server') equals: 'foobar server' ]
