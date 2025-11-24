*zinc-character-encoding-core
nextNumber: numberOfBytes put: integer
	"Protocol: accessing - bytes"
	^ self nextIntegerOfSize: numberOfBytes signed: false bigEndian: true put: integer
