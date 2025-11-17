*zinc-gemstone-tests
withServerDelegate: delegate do: block
  "Protocol: private"
  | server |
  server := super withServerDo: block.
  server delegate: delegate.
  [ 
  server start.
  self assert: server isRunning & server isListening.
  block cull: server ]
    ensure: [ server stop ]
