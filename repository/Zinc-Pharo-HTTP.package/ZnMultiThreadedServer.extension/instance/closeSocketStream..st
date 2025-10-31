*zinc-pharo-http
closeSocketStream: socketStream
	"Protocol: private"
	[ socketStream close ]
		on: Exception
		do: [ ]
