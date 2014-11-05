testing
testEcho
	| webSocket message |
	ZnServer defaultServerClass initialize.	
	ZnServerStarter start: ZnServer 
							 named: 'ZnWebSocketTestEchoServer' 
							 onPorts: #(1701) 
							 delegate: (ZnWebSocketDelegate map: 'ws-chatroom' to: ZnWebSocketChatroomHandler new).
	(Delay forSeconds: 3) wait.
	webSocket := ZnWebSocket to: 'ws://localhost:1701/ws-echo'.
	message := 'Greetings from Gemstone Smalltalk @ ', TimeStamp now printString.
	webSocket sendMessage: message.
	self assert: webSocket readMessage equals: message.
	webSocket close.
	ZnServerStarter stopAndRemoveGemServerNamed: 'ZnWebSocketTestEchoServer'.
	(Delay forSeconds: 3) wait
