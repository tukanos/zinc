*zinc-gemstone-tests
withGemServerDo: block
  "Protocol: private"
  | gemServer |
  gemServer := super withGemServerDo: block.
  self runGemServer: gemServer during: block
