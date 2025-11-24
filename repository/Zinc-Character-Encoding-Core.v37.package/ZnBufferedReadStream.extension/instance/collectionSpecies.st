*zinc-character-encoding-core
collectionSpecies
	"Protocol: accessing"
	^ stream isBinary
		ifTrue: [ ByteArray ]
		ifFalse: [ String ]
