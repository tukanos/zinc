*zinc-character-encoding-core
position
	"Protocol: accessing"

	^ super position - (peeked ifNil: [ 0 ] ifNotNil: [ 1 ])
