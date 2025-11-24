*zinc-character-encoding-core
nextPutAll: collection
	"Protocol: accessing"
	"Write a collection"

	self
		next: collection size
		putAll: collection
		startingAt: 1
