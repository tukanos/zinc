*zinc-gemstone-tests
withServerMaximumEntitySize: maximumEntitySize do: block
  "Protocol: private"
  | server |
  server := super withServerDo: block.
  server maximumEntitySize: maximumEntitySize.
  [ 
  server start.
  self assert: server isRunning & server isListening.
  block cull: server ]
    ensure: [ server stop ]
