*zinc-character-encoding-gs3-tests
testNextPut
	"Protocol: tests"
	"Ensure that the line ends are written correctly"

| lineEnding expectedString stream crStream |
	lineEnding := (Smalltalk os platformName asLowercase beginsWith: 'win')
		ifTrue: [ String crlf ]
		ifFalse: [ String lf ].
	expectedString := 'a', lineEnding, 'b'.
	{ String cr.
		String lf.
		String crlf. } do: [ :lineEnd |
			stream := String new writeStream.
			crStream := ZnNewLineWriterStream on: stream.
			crStream
				<< 'a';
				<< lineEnd;
				<< 'b'.
			self assert: stream contents equals: expectedString ]