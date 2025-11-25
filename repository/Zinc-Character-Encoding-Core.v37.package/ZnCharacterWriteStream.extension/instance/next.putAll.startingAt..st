*zinc-character-encoding-core
next: count putAll: collection startingAt: offset
	"Protocol: accessing"
	"Write count characters from collection starting at offset."

	self encoder
		next: count
		putAll: collection
		startingAt: offset
		toStream: stream
