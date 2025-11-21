private
valueForCharacter: char
	| code |
	code := char charCode.
	(code between: 0 and: 127)
		ifTrue: [ (inverse at: code + 1) ifNotNil: [ :byteValue | ^ byteValue ] ].
	ZnCharacterEncodingError signal: 'Illegal Base64 input'