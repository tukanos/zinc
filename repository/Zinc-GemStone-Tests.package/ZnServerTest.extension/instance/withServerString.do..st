*zinc-gemstone-tests
withServerString: aString do: block
  "Protocol: private"
  | server |
  server := super withServerDo: block.
  server serverString: aString.
  [ 
  server start.
  self assert: server isRunning & server isListening.
  block cull: server ]
    ensure: [ server stop ]
