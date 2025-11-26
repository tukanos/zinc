*zinc-character-encoding-core
next: requestedCount into: collection
	"Protocol: accessing"
	"Read requestedCount elements into collection,
	returning a copy if less elements are available"

	^ self
		next: requestedCount
		into: collection
		startingAt: 1
