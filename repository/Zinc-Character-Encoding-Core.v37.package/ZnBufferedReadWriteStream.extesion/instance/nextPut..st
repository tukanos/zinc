*zinc-character-encoding-core
nextPut: aCharacter
	"Protocol: accessing"

	self writingActionDo: [ writeStream nextPut: aCharacter ]
