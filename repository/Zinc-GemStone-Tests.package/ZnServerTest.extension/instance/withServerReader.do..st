*zinc-gemstone-tests
withServerReader: reader do: block
  "Protocol: private"
  | server |
  server := super withServerDo: block.
  server reader: reader.
  [ 
  server start.
  self assert: server isRunning & server isListening.
  block cull: server ]
    ensure: [ server stop ]
