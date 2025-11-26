*zinc-character-encoding-core
skip: count
	"Protocol: accessing"
	count < 0 ifTrue: [ self error: 'cannot skip backwards' ].
	count timesRepeat: [ self next ]
