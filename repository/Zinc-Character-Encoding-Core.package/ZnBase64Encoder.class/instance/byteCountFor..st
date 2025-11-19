private
byteCountFor: string
	| stringSize byteCount |
	"This assumes there are no line breaks in string and that padding is used"
	stringSize := string size.
	byteCount := stringSize // 4 * 3.
	^ (stringSize > 1 and: [ (string at: stringSize) = $= ])
		ifTrue: [
			(stringSize > 2 and: [ (string at: stringSize - 1) = $= ])
				ifTrue: [ byteCount - 2 ]
				ifFalse: [ byteCount - 1 ] ]
		ifFalse: [ byteCount ]