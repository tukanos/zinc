*zinc-gemstone-tests
withServerLimitedAcceptStrategy: anOptionDictionary do: block
  "Protocol: private"
  | server |
  server := super withServerDo: block.
  anOptionDictionary keysAndValuesDo: [ :option :value |
    server perform: option with: value ].
  [ 
  server start.
  self assert: server isRunning & server isListening.
  block cull: server ]
    ensure: [ server stop ]