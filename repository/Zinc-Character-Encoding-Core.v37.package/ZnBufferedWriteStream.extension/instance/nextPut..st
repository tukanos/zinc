*zinc-character-encoding-core
nextPut: object
	"Protocol: accessing"
	self flushBufferIfFull.
	position := position + 1.
	self buffer at: position put: object
