*zinc-pharo-character-encoding-core
backOnStream: stream
	"Protocol: encoding - decoding"
	"Move back one character on stream"

	[ (stream back bitAnd: 2r11000000) == 2r10000000 ] whileTrue