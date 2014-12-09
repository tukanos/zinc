accessing
currentServer: aServer
  currentServer
    ifNil: [ currentServer := TransientStackValue value: aServer ]
    ifNotNil: [ currentServer value: aServer ]