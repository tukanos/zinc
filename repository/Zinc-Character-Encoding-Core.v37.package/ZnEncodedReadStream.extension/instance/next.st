*zinc-character-encoding-core
next
	"Protocol: accessing"
	^ peeked
		ifNil: [
			stream atEnd ifFalse: [ self nextElement ] ]
		ifNotNil: [ | character |
			character := peeked.
			peeked := nil.
			character ]
