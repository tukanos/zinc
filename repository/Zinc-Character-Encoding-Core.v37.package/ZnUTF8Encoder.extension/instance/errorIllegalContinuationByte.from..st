*zinc-character-encoding-core
errorIllegalContinuationByte: byte from: stream
	"Protocol: error handling"
	^ self error: 'Illegal continuation byte for utf-8 encoding'
