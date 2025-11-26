*zinc-character-encoding-core
upToEnd
	"Protocol: accessing"
	^ self collectionSpecies
		streamContents: [ :collectionStream |
			[ self atEnd ] whileFalse: [ collectionStream nextPut: self next ] ]
