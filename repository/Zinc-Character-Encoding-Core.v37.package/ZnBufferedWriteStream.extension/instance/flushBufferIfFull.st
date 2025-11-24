*zinc-character-encoding-core
flushBufferIfFull
	"Protocol: private"
	position = self bufferSize
		ifTrue: [ self flushBuffer ]
