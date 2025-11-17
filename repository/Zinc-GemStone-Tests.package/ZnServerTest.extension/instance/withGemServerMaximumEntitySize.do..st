*zinc-gemstone-tests
withGemServerMaximumEntitySize: maximumEntitySize do: block
  "Protocol: private"
  | gemServer |
  gemServer := super withGemServerDo: block.
  gemServer maximumEntitySize: maximumEntitySize.
  self runGemServer: gemServer during: block
