*zinc-gemstone-character-encoding-core
isLegalCharacter: character
	"Protocol: private"
	"Return true when character is part of my alphabet"

	| code |
	code := character charCode.
	^ (code between: 0 and: 127)
			and: [ (inverse at: code + 1) notNil ]