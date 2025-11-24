*zinc-character-encoding-core
setToEnd
	"Protocol: accessing"

	^ self writingActionDo: [
		writeStream setToEnd ]
