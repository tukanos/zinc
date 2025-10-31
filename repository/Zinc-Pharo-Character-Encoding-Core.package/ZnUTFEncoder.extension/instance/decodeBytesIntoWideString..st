*zinc-pharo-character-encoding-core
decodeBytesIntoWideString: bytes
	"Protocol: convenience"
	"Variant of #decodeBytes: that is faster when you know upfront that a WideString is probably needed"

	| byteStream |
	byteStream := bytes readStream.
	^ WideString streamContents: [ :stream |
		[ byteStream atEnd ] whileFalse: [
			stream nextPut: (self nextFromStream: byteStream) ] ]
