*zinc-gemstone-tests
withGemServerLimitedAcceptStrategy: anOptionDictionary do: block
  "Protocol: private"
  | gemServer |
  gemServer := super withGemServerDo: block.
  anOptionDictionary keysAndValuesDo: [ :option :value |
    gemServer perform: option with: value ].
  self runGemServer: gemServer during: block