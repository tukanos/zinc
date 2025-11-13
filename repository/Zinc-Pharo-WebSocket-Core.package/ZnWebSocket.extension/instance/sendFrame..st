*zinc-pharo-websocket-core
sendFrame: frame
	"Protocol: private"
	"Send a single frame, masked when I am in a client role, flush"
	
	frame masked: self isClient.
	frame writeOn: stream.
	stream flush.
