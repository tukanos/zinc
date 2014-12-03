private
readFrame
  "Read and return the next non-control frame. Wait.
	Control frames are handled. ConnectionClosed is signalled when the other end closes."

  | frame |
  frame := ZnWebSocketFrame readFrom: stream.
  self log info: [ self asOop printString , ' got frame..' ].
  frame isControl
    ifTrue: [ 
      self handleControlFrame: frame.
      ^ self readFrame ].
  ^ frame