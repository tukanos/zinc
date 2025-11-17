*zinc-gemstone-tests
withGemServerReader: reader do: block
  "Protocol: private"
  | gemServer |
  gemServer := super withGemServerDo: block.
  gemServer reader: reader.
  self runGemServer: gemServer during: block
