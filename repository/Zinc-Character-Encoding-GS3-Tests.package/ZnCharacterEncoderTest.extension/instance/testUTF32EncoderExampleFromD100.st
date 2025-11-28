*zinc-character-encoding-gs3-tests
testUTF32EncoderExampleFromD100
	"Protocol: testing"
	| string bytes encoder |
	string := #(16r0000004D 16r00000430 16r00004E8C 16r00010302) collect: #asCharacter as: String.
	bytes := ByteArray readHexFrom: '4D000000300400008C4E000002030100'.
	encoder := #utf32 asZnCharacterEncoderGS.
	encoder beLittleEndian.
	self assert: encoder isLittleEndian.
	self assert: (encoder encodeString: string) equals: bytes.
	self assert: (encoder decodeBytes: bytes) equals: string
