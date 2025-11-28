*zinc-character-encoding-gs3-tests
testDefault
	"Protocol: testing"
	| string bytes |
	self assert: ZnCharacterEncoderGS default equals: ZnUTF8EncoderGS new.
	string := 'Der Weg zur Hölle ist mit guten Vorsätzen gepflastert.'.
	bytes := ZnUTF8EncoderGS new encodeString: string.
	ZnDefaultCharacterEncoder
		value: ZnUTF8EncoderGS new
		during: [
			self
				assert: (ZnCharacterEncoderGS default decodeBytes: bytes)
				equals: string ].
	ZnDefaultCharacterEncoder
		value: ZnUTF8EncoderGS new
		during: [
			self
				assert: ((ZnCharacterEncoderGS newForEncoding: 'unknown') decodeBytes: bytes)
				equals: string ]
