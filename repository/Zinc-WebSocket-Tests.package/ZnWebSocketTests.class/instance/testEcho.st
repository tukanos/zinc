testing
testEcho
  | webSocket message gemServer |
  ZnServer defaultServerClass initialize.
  gemServer := (ZnGemServer register: 'ZnWebSocketTestEchoServer' on: #(1701))
    delegate:
        (ZnWebSocketDelegate map: 'ws-echo' to: ZnWebSocketEchoHandler new);
    yourself.
  [ 
  gemServer startGems.
  (Delay forSeconds: 3) wait.
  webSocket := ZnWebSocket to: 'ws://localhost:1701/ws-echo'.
  message := 'Greetings from Gemstone Smalltalk @ ' , TimeStamp now printString.
  webSocket sendMessage: message.
  self assert: webSocket readMessage equals: message.
  webSocket close ]
    ensure: [ 
      gemServer stopGems.
      GemServerRegistry removeGemServer: gemServer.
      (Delay forSeconds: 3) wait ]