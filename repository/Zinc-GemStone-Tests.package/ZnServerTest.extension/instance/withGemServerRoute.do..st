*zinc-gemstone-tests
withGemServerRoute: route do: block
  "Protocol: private"
  | gemServer |
  gemServer := super withGemServerDo: block.
  gemServer route: route.
  self runGemServer: gemServer during: block
