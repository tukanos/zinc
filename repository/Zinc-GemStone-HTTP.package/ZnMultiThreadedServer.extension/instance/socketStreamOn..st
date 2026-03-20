*zinc-gemstone-http
socketStreamOn: socket
	"Protocol: private"
	| socketStream |
	socketStream := super socketStreamOn: socket.
	self numberOfOpenConnections >= self maximumNumberOfConcurrentConnections
		ifTrue: [ ^ self rejectConnection: socketStream ].
	self lock critical: [
		self connections add: socketStream ].
	^ socketStream