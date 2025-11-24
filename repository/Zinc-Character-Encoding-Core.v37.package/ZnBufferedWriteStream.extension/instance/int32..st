*zinc-character-encoding-core
int32: integer
	"Protocol: accessing - bytes"
	^ self nextIntegerOfSize: 4 signed: true bigEndian: true put: integer
