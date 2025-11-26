*zinc-character-encoding-core
next: count putAll: collection
	"Protocol: accessing"
	self
		next: count
		putAll: collection
		startingAt: 1
