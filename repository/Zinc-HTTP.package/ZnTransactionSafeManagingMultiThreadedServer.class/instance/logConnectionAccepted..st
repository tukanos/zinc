private - logging
logConnectionAccepted: listeningSocketTransientStackValue
  logLevel < 3 ifTrue: [ ^ nil ].
  ^ (self newLogEvent: ZnConnectionAcceptedEvent)
    address: ([ listeningSocketTransientStackValue value remoteAddress ] on: Error do: [ nil ]);
    emit