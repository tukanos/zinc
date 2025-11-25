*zinc-character-encoding-gs3-tests
testWriteThenRead
	"Protocol: tests"
	"GS requires to use ANSI version of the streams.  Legacy stream position
	will be used otherise!  That will yield incorrect results."
	| stream stringStream |

	stringStream := AnsiReadWriteStream with: '0123456789' copy.
	stringStream reset.
	stream := ZnBufferedReadWriteStream on: stringStream.
	stream sizeBuffer: 8.

	stream nextPutAll: 'ABCD'.

	self assert: stream peek equals: $4.
	self assert: stream position equals: 4.
	self assert: stream upToEnd equals: '456789'.
	self assert: stream position equals: 10.
	self assert: stream atEnd.

	self assert: stringStream contents equals: 'ABCD456789'
