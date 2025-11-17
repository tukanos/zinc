*zinc-gemstone-tests
withGemServerDelegate: delegate do: block
  "Protocol: private"
  | gemServer |
  gemServer := super withGemServerDo: block.
  gemServer delegate: delegate.
  self runGemServer: gemServer during: block
