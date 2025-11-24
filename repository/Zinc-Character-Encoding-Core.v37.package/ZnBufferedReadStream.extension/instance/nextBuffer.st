*zinc-character-encoding-core
nextBuffer
	"Protocol: private"
	limit := stream readInto: buffer startingAt: 1 count: buffer size.
	position := 1
