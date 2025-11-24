*zinc-character-encoding-core
truncate: anInteger
	"Protocol: accessing"

	self writingActionDo: [ writeStream truncate: anInteger ]
