*zinc-pharo-character-encoding-core
isLegalCharacter: character
	"Protocol: private"
	"Return true when character is part of my alphabet"

	| code |
	^ (code := character asciiValue) < 128
			and: [ (inverse at: code + 1) notNil ]
