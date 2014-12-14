private
withGemServerAuthenticator: authenticator do: block
  | gemServer |
  gemServer := super withGemServerDo: block.
  gemServer authenticator: authenticator.
  [ 
  gemServer restartGems.
  (Delay forSeconds: 3) wait.
  block cull: gemServer ]
    ensure: [ 
      gemServer stop.
      (Delay forSeconds: 3) wait.
      gemServer unregister ]