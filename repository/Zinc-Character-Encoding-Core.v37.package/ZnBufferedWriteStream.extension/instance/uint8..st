*zinc-character-encoding-core
uint8: integer
	"Protocol: accessing - bytes"
	^ self nextIntegerOfSize: 1 signed: false bigEndian: true put: integer
