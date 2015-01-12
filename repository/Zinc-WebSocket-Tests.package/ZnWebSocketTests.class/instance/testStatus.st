testing
testStatus
  | webSocket message gemServer |
  gemServer := self
    createGemServerNamed: 'ZnWebSocketTestStatusServer'
    delegate:
      (ZnWebSocketDelegate map: 'ws-status' to: ZnWebSocketStatusHandler new).
  self
    runGemServer: gemServer
    do: [ 
      gemServer startGems.	"does a commit"
      (Delay forSeconds: 3) wait.
      webSocket := ZnWebSocket to: 'ws://localhost:1701/ws-status'.
      message := webSocket readMessage.
      self
        assert:
          (#('GemStone' 'Free Space' 'Process')
            allSatisfy: [ :each | message includesSubstring: each ]).
      webSocket close ]