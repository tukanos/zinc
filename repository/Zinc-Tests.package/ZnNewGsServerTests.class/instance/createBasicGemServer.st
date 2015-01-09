private
createBasicGemServer
  | gemServer |
  gemServer := super createBasicGemServer.
  self staticRemoteServer
    ifTrue: [ gemServer interactiveMode: true ].
  ^ gemServer