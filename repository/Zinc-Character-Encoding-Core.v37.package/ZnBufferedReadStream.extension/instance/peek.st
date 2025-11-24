*zinc-character-encoding-core
peek
	"Protocol: accessing"
	"Return the next element but do not move over it"

	position > limit
		ifTrue: [ self nextBuffer ].
	^ position <= limit
		ifTrue: [ buffer at: position ]
		ifFalse: [ nil ]
