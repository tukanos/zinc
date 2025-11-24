*zinc-character-encoding-core
upTo: aCharacter
	"Protocol: accessing"

	^ self readingActionDo: [ readStream upTo: aCharacter ]
