*zinc-gemstone-tests
withGemServerBindingAddress: bindingAddress do: block
  "Protocol: private"
  | gemServer |
  gemServer := super withGemServerDo: block.
  gemServer bindingAddress: bindingAddress.
  self runGemServer: gemServer during: block
