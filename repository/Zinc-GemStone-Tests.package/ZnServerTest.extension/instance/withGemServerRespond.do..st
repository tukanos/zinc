*zinc-gemstone-tests
withGemServerRespond: onRequestRespondBlock do: block
  "Protocol: private"
  | gemServer |
  gemServer := super withGemServerDo: block.
  gemServer onRequestRespond: onRequestRespondBlock.
  self runGemServer: gemServer during: block