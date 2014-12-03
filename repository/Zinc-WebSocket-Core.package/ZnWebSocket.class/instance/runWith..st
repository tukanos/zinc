protocol
runWith: block
  "Start a run loop handling the WebSocket protocol.
	When a message is received, block will be passed a String or ByteArray.
	ConnectionClosed will be signalled when the other end closes."

  [ 
  | message |
  [ message := self readMessage ]
    on: ConnectionTimedOut
    do: [ :ignored | 
      "Ignore & continue"
      nil ].
  message
    ifNotNil: [ GRPlatform current doTransaction: [ block value: message ] ] ]
    repeat