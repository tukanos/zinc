*zinc-character-encoding-core
encodedByteCountForCodePoints: codePoints
  "Protocol: convenience"
	"Return the exact number of bytes it would take to encode codePoints as a byte array"

	^ codePoints
		inject: 0
		into: [ :sum :each |
			sum + (self encodedByteCountForCodePoint: each) ]
