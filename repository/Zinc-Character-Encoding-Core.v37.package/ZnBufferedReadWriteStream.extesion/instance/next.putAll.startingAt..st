*zinc-character-encoding-core
next: count putAll: collection startingAt: offset
	"Protocol: accessing"

	self writingActionDo: [
		writeStream next: count putAll: collection startingAt: offset ]
