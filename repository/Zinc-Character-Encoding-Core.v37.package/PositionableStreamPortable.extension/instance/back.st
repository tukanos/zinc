*zinc-character-encoding-core
back
	"Go back one element and return it."

	self position = 0 ifTrue: [self positionError: 0].
	self skip: -1.
	^ self peek