*zinc-character-encoding-core
nextLittleEndianNumber: numberOfBytes put: integer
	"Protocol: accessing - bytes"
	^ self nextIntegerOfSize: numberOfBytes signed: false bigEndian: false put: integer
