*zinc-character-encoding-core
upToEnd
	"Protocol: accessing"

	^ self readingActionDo: [ readStream upToEnd ]
