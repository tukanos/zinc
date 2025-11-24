*zinc-character-encoding-core
nextInt32
	"Protocol: accessing - bytes"
	^ self nextIntegerOfSize: 4 signed: true bigEndian: true
