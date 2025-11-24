*zinc-character-encoding-core
peek
	"Protocol: accessing"

	^ self readingActionDo: [
		readStream peek ]
