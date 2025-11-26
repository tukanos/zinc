*zinc-character-encoding-core
next: count putAll: collection startingAt: offset
	"Protocol: accessing"
	"Write count items from collection starting at offset.
	This is an inefficient abstract implementation writing one by one."

	0 to: count - 1 do: [ :each |
		self nextPut: (collection at: offset + each) ]
