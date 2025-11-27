*zinc-character-encoding-core
errorIllegalLeadingByte: byte from: stream
	"Protocol: error handling"
	^ self error: 'Illegal leading byte for utf-8 encoding'
