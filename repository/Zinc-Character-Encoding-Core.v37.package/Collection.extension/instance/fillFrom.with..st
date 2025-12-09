*zinc-character-encoding-core
fillFrom: aCollection with: aBlock
	"Protocol: private"
	"Evaluate aBlock with each of aCollections's elements as the argument.
	Collect the resulting values into self. Answer self."

	aCollection do: [ :each |
		self add: (aBlock value: each) ]