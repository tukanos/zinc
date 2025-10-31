*zinc-gemstone-tests
withServerDo: block
  "Protocol: private"
  | server |
  server := super withServerDo: block.
  [ 
  server start.
  Processor yield.
  self assert: server isRunning & server isListening.
  block cull: server ]
    ensure: [ server stop ]
