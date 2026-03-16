*zinc-gemstone-tests
withServerDebug: aBoolean do: block
  "Protocol: private"
  | server |
  server := super withServerDo: block.
  server debug: aBoolean.
  [ 
  server start.
  self assert: server isRunning & server isListening.
  block cull: server ]
    ensure: [ server stop ]
