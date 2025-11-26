*zinc-character-encoding-core
peekFor: object
	"Protocol: accessing"
	^ self peek = object
		ifTrue: [
			self next.
			true ]
		ifFalse: [ false ]
