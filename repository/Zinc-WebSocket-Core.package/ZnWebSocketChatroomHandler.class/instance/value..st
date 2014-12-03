accessing
value: webSocket
  "I implement a simple chat room service as a server:
	distributing incoming messages to all known clients"

  [ 
  webSocket log info: [ webSocket asOop printString , ' registering' ].
  self register: webSocket.
  webSocket
    runWith: [ :message | 
      webSocket log
        info: [ webSocket asOop printString , ' Received message: ' , message printString ].
      self distributeMessage: message.
      webSocket log
        info: [ webSocket asOop printString , ' distributed message' ] ] ]
    on: ConnectionClosed
    do: [ :ignored | 
      webSocket log debug: 'Connection close, cleaning up'.
      self unregister: webSocket ]