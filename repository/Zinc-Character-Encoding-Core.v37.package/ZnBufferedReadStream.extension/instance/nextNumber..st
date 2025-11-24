*zinc-character-encoding-core
nextNumber: numberOfBytes
	"Protocol: accessing - bytes"
	^ self nextIntegerOfSize: numberOfBytes signed: false bigEndian: true
