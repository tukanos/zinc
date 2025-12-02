*zinc-character-encoding-gs3-tests
testDebuggingUTF8
	"Protocol: testing"

	self
		should: [ (({ $A. 55296 asCharacter . $B } as: String) encodeWith: #'utf8debug') utf8Decoded  ]
		raise: OutOfRange
