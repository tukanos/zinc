testing
testStatus
  | webSocket message gemServer |
  ZnServer defaultServerClass initialize.
  gemServer := (ZnGemServer
    register: 'ZnWebSocketTestStatusServer'
    on: #(1701))
    logToObjectLog;
    logEverything;
    delegate:
        (ZnWebSocketDelegate map: 'ws-status' to: ZnWebSocketStatusHandler new);
    yourself.
  [ 
  gemServer startGems.	"does a commit"
  (Delay forSeconds: 3) wait.
  webSocket := ZnWebSocket to: 'ws://localhost:1701/ws-status'.
  message := webSocket readMessage.
  self
    assert:
      (#('GemStone' 'Free Space' 'Process')
        allSatisfy: [ :each | message includesSubstring: each ]).
  webSocket close ]
    ensure: [ 
      gemServer
        stopGems;
        unregister.
      (Delay forSeconds: 3) wait ]