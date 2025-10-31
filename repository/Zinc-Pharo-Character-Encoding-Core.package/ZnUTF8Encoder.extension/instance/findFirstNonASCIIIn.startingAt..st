*zinc-pharo-character-encoding-core
findFirstNonASCIIIn: string startingAt: offset
	"Protocol: private"
	"This calls a fast primitive. Note that string can be a ByteString or ByteArray"

	offset > string size ifTrue: [ ^ 0 ].
	^ ByteString
		findFirstInString: string
		inSet: ByteASCIISet
		startingAt: offset