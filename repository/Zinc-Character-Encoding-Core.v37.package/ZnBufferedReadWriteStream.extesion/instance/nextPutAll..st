*zinc-character-encoding-core
nextPutAll: aString
	"Protocol: accessing"

	^ self writingActionDo: [ writeStream nextPutAll: aString ]
