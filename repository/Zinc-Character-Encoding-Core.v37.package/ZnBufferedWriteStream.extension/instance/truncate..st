*zinc-character-encoding-core
truncate: anInteger
	"Protocol: accessing"

	self flushBuffer.
	stream truncate: anInteger
