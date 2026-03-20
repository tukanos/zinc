*zinc-pharo-http
socketStreamOn: socket
	"Protocol: private"
	| socketStream |
	socketStream := super socketStreamOn: socket.
	self numberOfOpenConnections >= (ZnCurrentOptions at: #maximumNumberOfConcurrentConnections)
		ifTrue: [ ^ self rejectConnection: socketStream ].
	self lock critical: [
		self connections add: socketStream ].
	^ socketStream