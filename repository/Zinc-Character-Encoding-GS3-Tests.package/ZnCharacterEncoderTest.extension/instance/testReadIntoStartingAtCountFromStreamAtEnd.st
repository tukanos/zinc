*zinc-character-encoding-gs3-tests
testReadIntoStartingAtCountFromStreamAtEnd
	"Protocol: testing"
	| input encoder bytes readStream string read |
	encoder := ZnUTF8EncoderGS new.
	input := 'élève'.
	bytes := encoder encodeString: input.
	readStream := bytes readStream.
	string := String new: 5 withAll: $_.
	read := encoder readInto: string startingAt: 1 count: 10 fromStream: readStream.
	self assert: string equals: input.
	self assert: read equals: 5
