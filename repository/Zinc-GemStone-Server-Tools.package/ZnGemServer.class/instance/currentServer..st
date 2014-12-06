accessing
currentServer: aServer
  currentServer
    ifNil: [ currentServer := TransientValue value: aServer ]
    ifNotNil: [ currentServer value: aServer ]