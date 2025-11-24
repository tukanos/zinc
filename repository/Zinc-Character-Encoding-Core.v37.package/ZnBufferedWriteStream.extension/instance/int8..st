*zinc-character-encoding-core
int8: integer
	"Protocol: accessing - bytes"
	^ self nextIntegerOfSize: 1 signed: true bigEndian: true put: integer
