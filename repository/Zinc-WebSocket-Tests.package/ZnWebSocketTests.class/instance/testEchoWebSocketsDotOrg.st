testing
testEchoWebSocketsDotOrg
	| webSocket message |
	true
		ifTrue: [ 
			"echo.webserver.org is no longer available ...  is no longer available. See https://github.com/GsDevKit/zinc/issues/96"
			^ self ].
	webSocket := self webSocketClass to: 'ws://echo.websocket.org'.
	message := 'Greetings from Gemstone Smalltalk @ ' , TimeStamp now printString.
	webSocket sendMessage: message.
	self assert: webSocket readMessage equals: message.
	webSocket close