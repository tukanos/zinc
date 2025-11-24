*zinc-character-encoding-core
skip: anInteger
	"Protocol: accessing"
	anInteger < 0 ifTrue: [ self error: 'cannot skip backwards' ].
	self readingActionDo: [
		readStream skip: anInteger ]
