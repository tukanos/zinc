*zinc-gemstone-http
serverSocketOn: port interface: address
  "Protocol: public"
	| socket |
	socket := SocketStreamSocket newTCPSocket.
	self setServerSocketOptions: socket.
	socket
		listenOn: port
		backlogSize: self class listenBacklogSize
		interface: address.
	socket isValid
		ifFalse: [ self error: 'Cannot create socket on port ', port printString ].
	^ socket
