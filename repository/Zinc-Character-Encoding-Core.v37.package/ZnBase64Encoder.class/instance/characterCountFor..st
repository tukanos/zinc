private
characterCountFor: bytes
	| byteSize characterCount |
	"This assumes that padding is used"
	byteSize := bytes size.
	characterCount := (byteSize // 3 + (byteSize \\ 3) sign) * 4.
	^ lineLength
		ifNil: [ characterCount ]
		ifNotNil: [ characterCount + (characterCount // lineLength * lineEnd size) ]