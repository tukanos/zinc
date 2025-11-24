*zinc-character-encoding-core
flush
	"Protocol: accessing"

	self writingActionDo: [ writeStream flush ]
