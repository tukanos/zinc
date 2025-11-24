*zinc-character-encoding-core
uint16: integer
	"Protocol: accessing - bytes"
	^ self nextIntegerOfSize: 2 signed: false bigEndian: true put: integer
