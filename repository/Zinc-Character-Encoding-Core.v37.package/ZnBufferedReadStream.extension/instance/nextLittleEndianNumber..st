*zinc-character-encoding-core
nextLittleEndianNumber: numberOfBytes
	"Protocol: accessing - bytes"
	^ self nextIntegerOfSize: numberOfBytes signed: false bigEndian: false
