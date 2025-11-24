*zinc-character-encoding-core
nextInt32Put: integer
	"Protocol: accessing - bytes"
	^ self nextIntegerOfSize: 4 signed: true bigEndian: true put: integer
