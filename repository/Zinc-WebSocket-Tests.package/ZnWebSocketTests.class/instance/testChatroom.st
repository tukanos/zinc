testing
testChatroom
  | webSocket1 message1 inbox1 webSocket2 message2 inbox2 gemServer |
  ZnServer defaultServerClass initialize.
  gemServer := (ZnGemServer register: 'ZnWebSocketTestChatServer' on: #(1701))
    debugMode: true;
    delegate:
        (ZnWebSocketDelegate map: 'ws-chatroom' to: ZnWebSocketChatroomHandler new);
    yourself.
  [ 
  gemServer startGems.
  (Delay forSeconds: 3) wait.
  webSocket1 := ZnWebSocket to: 'ws://localhost:1701/ws-chatroom'.
  (ObjectLogEntry info: 'Connect webSocket1' object: message1) addToLog.
  message1 := 'Message 1 @ ' , TimeStamp now printString.
  webSocket2 := ZnWebSocket to: 'ws://localhost:1701/ws-chatroom'.
  (ObjectLogEntry info: 'Connect webSocket2' object: message1) addToLog.
  message2 := 'Message 2 @ ' , TimeStamp now printString.
  webSocket1 sendMessage: message1.
  (ObjectLogEntry info: 'Send message1' object: message1) addToLog.
  webSocket2 sendMessage: message2.
  (ObjectLogEntry info: 'Send message2' object: message2) addToLog.
  inbox1 := {(webSocket1 readMessage).
  (webSocket1 readMessage)}.
  (ObjectLogEntry info: 'Read inbox1' object: inbox1) addToLog.
  inbox2 := {(webSocket2 readMessage).
  (webSocket2 readMessage)}.
  (ObjectLogEntry info: 'Read inbox2' object: inbox2) addToLog.
  self assert: (inbox1 includes: message1).
  self assert: (inbox1 includes: message2).
  self assert: (inbox2 includes: message1).
  self assert: (inbox2 includes: message2).
  webSocket1 close.
  (ObjectLogEntry info: 'websocket2 closed') addToLog.
  webSocket2 close.
  (ObjectLogEntry info: 'websocket2 closed') addToLog ]
    ensure: [ 
      System commitTransaction.
      gemServer stopGems.
      GemServerRegistry removeGemServer: gemServer.
      (Delay forSeconds: 3) wait ]