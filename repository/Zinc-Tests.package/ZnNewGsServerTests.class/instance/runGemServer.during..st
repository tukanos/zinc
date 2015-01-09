private
runGemServer: gemServer during: block
  self staticRemoteServer
    ifTrue: [ self runStaticRemoteGemServer: gemServer during: block ].
  [ 
  gemServer restartGems.
  (Delay forSeconds: 3) wait.
  block cull: gemServer ]
    ensure: [ 
      gemServer stop.
      (Delay forSeconds: 3) wait.
      gemServer unregister ]