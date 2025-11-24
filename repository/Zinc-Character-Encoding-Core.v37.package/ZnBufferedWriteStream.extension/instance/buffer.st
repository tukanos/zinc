*zinc-character-encoding-core
buffer
	"Protocol: private"

	buffer ifNil: [ self sizeBuffer: self defaultBufferSize ].
	^ buffer
