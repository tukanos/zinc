*zinc-gemstone-http
printOn: stream
	"Protocol: printing"
	self printHeaderOn: stream.
	stream space.
	self printContentsOn: stream
