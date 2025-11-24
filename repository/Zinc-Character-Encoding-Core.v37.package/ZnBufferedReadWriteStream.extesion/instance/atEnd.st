*zinc-character-encoding-core
atEnd
	"Protocol: testing"

	^ self readingActionDo: [ readStream atEnd ]
