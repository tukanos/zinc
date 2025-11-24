*zinc-character-encoding-core
sizeBuffer: size
	"Protocol: accessing"
	buffer := (stream isBinary ifTrue: [ ByteArray ] ifFalse: [ String ]) new: size
