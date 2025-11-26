*zinc-character-encoding-core
encoder
	"Protocol: accessing"
	^ encoder ifNil: [ encoder := self class defaultEncoder ]
