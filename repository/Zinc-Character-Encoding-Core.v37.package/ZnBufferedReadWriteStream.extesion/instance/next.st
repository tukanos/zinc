*zinc-character-encoding-core
next
	"Protocol: accessing"

	^ self readingActionDo: [
		readStream next ]
