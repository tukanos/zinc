testing
testStatus
	| webSocket message |
	ZnServer defaultServerClass initialize.	
	ZnServerStarter start: ZnServer 
							 named: 'ZnWebSocketTestStatusServer' 
							 onPorts: #(1701) 
							 delegate: (ZnWebSocketDelegate map: 'ws-status' to: ZnWebSocketStatusHandler new).
	(Delay forSeconds: 3) wait.
	webSocket := ZnWebSocket to: 'ws://localhost:1701/ws-status'.
	message := webSocket readMessage.
	self assert: (#('Gemstone' 'memory' 'GC' 'Process') allSatisfy: [ :each | message includesSubstring: each ]).
	webSocket close.
ZnServerStarter stopAndRemoveGemServerNamed: 'ZnWebSocketTestStatusServer'.
	(Delay forSeconds: 3) wait
