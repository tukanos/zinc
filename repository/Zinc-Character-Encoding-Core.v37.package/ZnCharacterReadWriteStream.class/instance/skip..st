*zinc-character-encoding-core
skip: anInteger
	"Protocol: accessing"
	anInteger < 0 ifTrue: [ self error: 'cannot skip backwards' ].
	readStream skip: anInteger
