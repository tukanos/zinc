testing
testEchoLocalInterface
	| resolver address server response |
	resolver := (Smalltalk at: #'NetNameResolver').
	address := resolver
		ifNotNil: [ resolver loopBackAddress ]
		ifNil: [ '127.0.0.1' ].
	(server := ZnServer on: self port) bindingAddress: address.	
	[ server start.
	self assert: server isRunning & server isListening description: ('Failed to start server on port {1}. Is there one already?' format: {server port}).
	response := ZnEasy
		get:
			(server localUrl
				addPathSegments: #('echo' 'foo');
				yourself).
	self assert: response contentType equals: ZnMimeType textPlain.
	self assert: response statusLine code equals: 200.
	self assert: (response entity contents includesSubstring: 'Zinc').
	self assert: (response entity contents includesSubstring: 'foo') ]
		ensure: [ server stop ]