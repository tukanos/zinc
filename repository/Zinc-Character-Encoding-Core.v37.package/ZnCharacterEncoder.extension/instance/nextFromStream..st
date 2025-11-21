*zinc-character-encoding-core
nextFromStream: stream
  "Protocol: encoding - decoding"
	"Read and return the next character from stream"

	"We should use #codePoint: but #value: is faster"

	^ Character value: (self nextCodePointFromStream: stream)
