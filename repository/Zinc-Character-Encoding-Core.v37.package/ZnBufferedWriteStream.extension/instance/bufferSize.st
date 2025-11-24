*zinc-character-encoding-core
bufferSize
	"Protocol: accessing"

	^ buffer ifNil: [ self defaultBufferSize ] ifNotNil: [ buffer size ]
