testing
testEchoSecureWebSocketsDotOrg
	| webSocket message |
	true
		ifTrue: [ 
			"echo.websocket.org is no longer available. See https://github.com/GsDevKit/zinc/issues/96"
			^ self ].
	(Smalltalk at: #'GsSecureSocket') disableCertificateVerificationOnClient.
	webSocket := self webSocketClass to: 'wss://echo.websocket.org'.
	message := 'Greetings from Gemstone Smalltalk @ ' , TimeStamp now printString.
	webSocket sendMessage: message.
	self assert: webSocket readMessage equals: message.
	webSocket close