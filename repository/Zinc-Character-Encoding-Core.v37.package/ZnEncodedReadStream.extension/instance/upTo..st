*zinc-character-encoding-core
upTo: anObject
	"Protocol: accessing"
	^ self collectionSpecies
		streamContents: [ :out | | element |
			[ self atEnd or: [ (element := self next) = anObject ] ] whileFalse: [
				out nextPut: element ] ]
