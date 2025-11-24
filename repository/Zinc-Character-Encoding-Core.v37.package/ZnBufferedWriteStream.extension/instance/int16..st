*zinc-character-encoding-core
int16: integer
	"Protocol: accessing - bytes"
	^ self nextIntegerOfSize: 2 signed: true bigEndian: true put: integer
