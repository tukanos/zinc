*zinc-character-encoding-gs3-tests
testUTF8EncoderAuto
	"Protocol: testing"

	| encoder inputString bytes outputString |
	encoder := ZnUTF8EncoderGS new.
	inputString := String withAll:
		               ((1 to: 3072) collect: [ :each |
			                Character value: each ]).
	bytes := self encodeString: inputString with: encoder.
	outputString := self decodeBytes: bytes with: encoder.
	self assert: inputString equals: outputString
