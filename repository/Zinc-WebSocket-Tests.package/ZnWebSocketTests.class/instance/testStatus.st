testing
testStatus
  | webSocket message gemServer |
  ZnServer defaultServerClass initialize.
  gemServer := (ZnGemServer register: 'ZnWebSocketTestStatusServer' on: #(1701))
    delegate:
        (ZnWebSocketDelegate map: 'ws-status' to: ZnWebSocketStatusHandler new);
    yourself.
  [ 
  gemServer startGems.
  (Delay forSeconds: 3) wait.
  webSocket := ZnWebSocket to: 'ws://localhost:1701/ws-status'.
  message := webSocket readMessage.
  self
    assert:
      (#('Gemstone' 'memory' 'GC' 'Process')
        allSatisfy: [ :each | message includesSubstring: each ]).
  webSocket close ]
    ensure: [ 
      gemServer stopGems.
      GemServerRegistry removeGemServer: gemServer.
      (Delay forSeconds: 3) wait ]