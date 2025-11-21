*zinc-gemstone-character-encoding-core
backOnStream: stream
	"Protocol: encoding - decoding"
	"Move back one character on stream"

	[stream position = 0
		ifTrue: [Error signal: 'Cannot move backward past the start of the stream.'].
	stream skip: -1.
	(stream peek bitAnd: 2r11000000) == 2r10000000 ] whileTrue
