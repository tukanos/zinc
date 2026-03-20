private - logging
logConnectionClosed: streamTransientStackValue
  logLevel < 3 ifTrue: [ ^ nil ].
  streamTransientStackValue value socket ifNil: [ ^ nil ].
  ^ (self newLogEvent: ZnServerConnectionClosedEvent)
    address: ([ streamTransientStackValue value socket remoteAddress] on: Error do: [ nil ]);
    emit