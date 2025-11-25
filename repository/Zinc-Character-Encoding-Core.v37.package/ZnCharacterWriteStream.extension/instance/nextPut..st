*zinc-character-encoding-core
nextPut: object
	"Protocol: accessing"
	self encoder
		nextPut: object
		toStream: stream.
	^ object
