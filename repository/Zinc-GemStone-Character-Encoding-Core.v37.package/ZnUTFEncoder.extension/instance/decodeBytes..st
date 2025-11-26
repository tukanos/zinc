*zinc-gemstone-character-encoding-core
decodeBytes: bytes
	"Protocol: convenience"
	"Overridden to prevent the automagic switch from ByteString to QuadByteString.
	See also #decodeBytesIntoQuadByteString:"

	| byteStream |
	byteStream := bytes readStream.
	^ String streamContents: [ :stream |
		[ byteStream atEnd ] whileFalse: [ | codePoint |
			codePoint := self nextCodePointFromStream: byteStream.
			(codePoint > 255 and: [ stream originalContents isQuadByteString not ])
				ifTrue: [ | quadByteString position |
					position := stream position.
					quadByteString := QuadByteString withAll: stream originalContents.
					stream on: quadByteString; setFrom: position + 1 to: position ].
			stream nextPut: (Character value: codePoint) ] ]
