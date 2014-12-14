private
withGemServerDelegate: delegate do: block
  | gemServer |
  gemServer := super withGemServerDo: block.
  gemServer delegate: delegate.
  [ 
  gemServer restartGems.
  (Delay forSeconds: 3) wait.
  block cull: gemServer ]
    ensure: [ 
      gemServer stop.
      (Delay forSeconds: 3) wait.
      gemServer unregister ]