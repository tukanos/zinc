*zinc-character-encoding-core
next: count putAll: collection
	"Protocol: accessing"

	self writingActionDo: [
		writeStream next: count putAll: collection ]
