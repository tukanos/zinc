*zinc-gemstone-http
closeSocketStream: socketStream
  "Protocol: private"
  super closeSocketStream: socketStream.
  self lock critical: [
    self connections remove: socketStream
                     ifAbsent: [ 
                       self log error: [ 'Could not remove ' , socketStream printString , ' ignoring' ] ] ]
