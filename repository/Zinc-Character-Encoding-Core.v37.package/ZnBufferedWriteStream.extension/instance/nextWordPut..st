*zinc-character-encoding-core
nextWordPut: integer
	"Protocol: accessing - bytes"
	^ self nextIntegerOfSize: 2 signed: false bigEndian: true put: integer
