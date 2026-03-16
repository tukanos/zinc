*zinc-gemstone-tests
withServerRespond: onRequestRespondBlock do: block
  "Protocol: private"
  | server |
  server := super withServerDo: block.
  server onRequestRespond: onRequestRespondBlock.
  [ 
  server start.
  self assert: server isRunning & server isListening.
  block cull: server ]
    ensure: [ server stop ]
