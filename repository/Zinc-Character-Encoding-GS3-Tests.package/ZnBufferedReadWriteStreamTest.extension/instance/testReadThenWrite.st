*zinc-character-encoding-gs3-tests
testReadThenWrite
	"Protocol: tests"
	| stream stringStream |

	stringStream := ReadWriteStream with: '0123456789' copy.
	stringStream reset.
	stream := ZnBufferedReadWriteStream on: stringStream.
	stream sizeBuffer: 8.

	stream next: 4.
	self assert: stream position equals: 4.

	stream nextPutAll: 'ABCD'.
	self assert: stream position equals: 8.

	self assert: stream peek equals: $8.
	self assert: stream upToEnd equals: '89'.
	self assert: stream atEnd.

	self assert: stringStream contents equals: '0123ABCD89'
