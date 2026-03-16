*zinc-gemstone-tests
withGemServerDebug: aBoolean do: block
  "Protocol: private"
  | gemServer |
  gemServer := super withGemServerDo: block.
  gemServer debugMode: aBoolean.
  self runGemServer: gemServer during: block