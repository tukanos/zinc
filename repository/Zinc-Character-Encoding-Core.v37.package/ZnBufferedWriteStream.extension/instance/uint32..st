*zinc-character-encoding-core
uint32: integer
	"Protocol: accessing - bytes"
	^ self nextIntegerOfSize: 4 signed: false bigEndian: true put: integer
