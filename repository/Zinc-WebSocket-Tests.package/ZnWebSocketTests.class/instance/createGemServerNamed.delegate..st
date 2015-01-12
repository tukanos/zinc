private
createGemServerNamed: gemServerName delegate: delegate
  | gemServer |
  gemServer := (ZnNewGemServer register: self gemServerName on: #(1701))
    logToObjectLog;
    logEverything;
    delegate: delegate;
    yourself.
  self interactiveRemoteServer
    ifTrue: [ gemServer interactiveMode: true ].
  ^ gemServer