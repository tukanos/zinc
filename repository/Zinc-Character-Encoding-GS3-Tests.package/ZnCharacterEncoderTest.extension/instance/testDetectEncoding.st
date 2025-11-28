*zinc-character-encoding-gs3-tests
testDetectEncoding
	"Protocol: testing"
	| bytes |
	bytes := 'abc' asByteArray.
	self assert: (ZnCharacterEncoderGS detectEncoding: bytes) equals: ZnCharacterEncoderGS ascii.
	bytes := ZnCharacterEncoderGS iso88591 encodeString: 'Les élèves Français'.
	self assert: (ZnCharacterEncoderGS detectEncoding: bytes) equals: ZnCharacterEncoderGS iso88591.
	bytes := ZnCharacterEncoderGS utf8 encodeString: 'Les élèves Français'.
	self assert: (ZnCharacterEncoderGS detectEncoding: bytes) equals: ZnCharacterEncoderGS utf8
