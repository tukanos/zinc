*zinc-character-encoding-core
nextPut: character toStream: stream
  "Protocol: encoding - decoding"
	"Write the encoding for character to stream"

	"We should use #codePoint but #asInteger is faster"

	self nextPutCodePoint: character asInteger toStream: stream
