*zinc-gemstone-http
printOn: stream
  "Protocol: printing"
  self message isNil
    ifFalse: [ 
      self printHeaderOn: stream.
      stream
        space;
        nextPutAll: self message asString ]
