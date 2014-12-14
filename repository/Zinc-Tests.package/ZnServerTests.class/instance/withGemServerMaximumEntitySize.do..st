private
withGemServerMaximumEntitySize: maximumEntitySize do: block
  | gemServer |
  gemServer := super withGemServerDo: block.
  gemServer maximumEntitySize: maximumEntitySize.
  [ 
  gemServer restartGems.
  (Delay forSeconds: 3) wait.
  block cull: gemServer ]
    ensure: [ 
      gemServer stop.
      (Delay forSeconds: 3) wait.
      gemServer unregister ]