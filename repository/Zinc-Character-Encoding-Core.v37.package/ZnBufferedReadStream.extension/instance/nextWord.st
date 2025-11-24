*zinc-character-encoding-core
nextWord
	"Protocol: accessing - bytes"
	^ self nextIntegerOfSize: 2 signed: false bigEndian: true
