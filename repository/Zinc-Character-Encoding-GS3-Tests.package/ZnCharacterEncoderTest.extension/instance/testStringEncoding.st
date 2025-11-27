*zinc-character-encoding-gs3-tests
testStringEncoding
	"Protocol: testing"
	| encoder string |
	encoder := ZnUTF8EncoderGS new.
	string := 'élève en Français'.
	self assert: (string encodeWith: encoder) equals: (encoder encodeString: string).
	self assert: (string encodeWith: #utf8) equals: (encoder encodeString: string).
	self assert: string utf8Encoded equals: (encoder encodeString: string)
