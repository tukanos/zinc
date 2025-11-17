*zinc-gemstone-tests
withGemServerAuthenticator: authenticator do: block
  "Protocol: private"
  | gemServer |
  gemServer := super withGemServerDo: block.
  gemServer authenticator: authenticator.
  self runGemServer: gemServer during: block
