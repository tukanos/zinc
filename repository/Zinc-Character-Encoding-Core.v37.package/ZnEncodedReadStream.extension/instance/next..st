*zinc-character-encoding-core
next: requestedCount
	"Protocol: accessing"
	"Read requestedCount elements into new collection and return it,
	 it could be that less elements were available"

	^ self
		next: requestedCount
		into: (self collectionSpecies new: requestedCount)
