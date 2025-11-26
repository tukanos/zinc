*zinc-character-encoding-core
nextPutAll: collection
	"Protocol: accessing"
	self
		next: collection size
		putAll: collection
		startingAt: 1
