*zinc-character-encoding-core
next: count putAll: collection
	"Protocol: accessing"
	"Write count elements from collection"

	self
		next: count
		putAll: collection
		startingAt: 1
