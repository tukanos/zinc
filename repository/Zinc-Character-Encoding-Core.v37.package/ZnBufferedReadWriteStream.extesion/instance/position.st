*zinc-character-encoding-core
position
	"Protocol: accessing"

	^ lastRead
		ifTrue: [ readStream position ]
		ifFalse: [ writeStream position ]
