*zinc-character-encoding-core
readInto: collection startingAt: offset count: requestedCount
	"Protocol: accessing"

	^ self readingActionDo: [
		readStream readInto: collection startingAt: offset count: requestedCount ]
