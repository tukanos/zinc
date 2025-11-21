private
encode: byte1 and: byte2 and: byte3 to: stream
	stream nextPut: (self characterForValue: (byte1 >> 2));
	       nextPut: (self characterForValue: ((byte1 bitAnd: 2r11) << 4 bitXor: (byte2 ifNil: [ 0 ]) >> 4)).
	byte2
		ifNil: [ padding ifNotNil: [ stream nextPut: padding; nextPut: padding ] ]
		ifNotNil: [ stream nextPut: (self characterForValue: ((byte2 bitAnd: 2r1111) << 2 bitXor: (byte3 ifNil: [ 0 ]) >> 6)).
			byte3
				ifNil: [ padding ifNotNil: [ stream nextPut: $= ] ]
				ifNotNil: [ stream nextPut: (self characterForValue: (byte3 bitAnd: 2r111111)) ] ]