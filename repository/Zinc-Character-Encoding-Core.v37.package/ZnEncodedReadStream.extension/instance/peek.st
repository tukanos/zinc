*zinc-character-encoding-core
peek
	"Protocol: accessing"
	^ peeked
		ifNil: [
			stream atEnd ifFalse: [ peeked := self nextElement ] ]
