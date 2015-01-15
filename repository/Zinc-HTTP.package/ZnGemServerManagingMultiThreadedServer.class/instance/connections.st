accessing
connections
  connections
    ifNil: [ connections := TransientStackValue value: OrderedCollection new ].
  ^ connections value