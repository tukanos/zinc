private
withGemServerRoute: route do: block
  | gemServer |
  gemServer := super withGemServerDo: block.
  gemServer route: route.
  [ 
  gemServer restartGems.
  (Delay forSeconds: 3) wait.
  block cull: gemServer ]
    ensure: [ 
      gemServer stop.
      (Delay forSeconds: 3) wait.
      gemServer unregister ]