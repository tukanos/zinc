*zinc-gemstone-http
closeSocketStream: socketStream
	"Protocol: private"
	[ socketStream close ] 
		on: Error 
		do: [ :exception | exception printString, ' occured during close socket stream!' ]

