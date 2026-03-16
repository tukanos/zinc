private - logging
logConnectionRejected: streamTransientStackValue
  logLevel < 3 ifTrue: [ ^ nil ].
  ^ (self newLogEvent: ZnConnectionRejectedEvent)
    address: ([ streamTransientStackValue value socket remoteAddress ] on: Error do: [ nil ]);
    emit