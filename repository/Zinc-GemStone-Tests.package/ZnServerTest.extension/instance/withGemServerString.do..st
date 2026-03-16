*zinc-gemstone-tests
withGemServerString: aString do: block
  "Protocol: private"
  | gemServer |
  gemServer := super withGemServerDo: block.
  gemServer serverString: aString.
  self runGemServer: gemServer during: block