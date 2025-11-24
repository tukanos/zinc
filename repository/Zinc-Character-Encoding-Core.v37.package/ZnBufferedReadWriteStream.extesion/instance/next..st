*zinc-character-encoding-core
next: anInteger
	"Protocol: accessing"

	^ self readingActionDo: [
		readStream next: anInteger ]
