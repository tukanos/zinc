testing
testChatroom
  | webSocket1 message1 inbox1 webSocket2 message2 inbox2 gemServer |
  ZnServer defaultServerClass initialize.
  gemServer := (ZnGemServer register: 'ZnWebSocketTestChatServer' on: #(1701))
    delegate:
        (ZnWebSocketDelegate map: 'ws-chatroom' to: ZnWebSocketChatroomHandler new);
    yourself.
  [ 
  gemServer startGems.
  (Delay forSeconds: 3) wait.
  webSocket1 := ZnWebSocket to: 'ws://localhost:1701/ws-chatroom'.
  message1 := 'Message 1 @ ' , TimeStamp now printString.
  webSocket2 := ZnWebSocket to: 'ws://localhost:1701/ws-chatroom'.
  message2 := 'Message 2 @ ' , TimeStamp now printString.
  webSocket1 sendMessage: message1.
  webSocket2 sendMessage: message2.
  inbox1 := {(webSocket1 readMessage).
  (webSocket1 readMessage)}.
  inbox2 := {(webSocket2 readMessage).
  (webSocket2 readMessage)}.
  self assert: (inbox1 includes: message1).
  self assert: (inbox1 includes: message2).
  self assert: (inbox2 includes: message1).
  self assert: (inbox2 includes: message2).
  webSocket1 close.
  webSocket2 close ]
    ensure: [ 
      gemServer stopGems.
      GemServerRegistry removeGemServer: gemServer.
      (Delay forSeconds: 3) wait ]