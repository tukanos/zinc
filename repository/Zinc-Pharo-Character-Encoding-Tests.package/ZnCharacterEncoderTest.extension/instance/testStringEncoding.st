*zinc-pharo-character-encoding-tests
testStringEncoding
	"Protocol: testing"
	| encoder string |
	encoder := ZnUTF8Encoder new.
	string := 'élève en Français'.
	self assert: (string encodeWith: encoder) equals: (encoder encodeString: string).
	self assert: (string encodeWith: #utf8) equals: (encoder encodeString: string).
	self assert: string utf8Encoded equals: (encoder encodeString: string)
