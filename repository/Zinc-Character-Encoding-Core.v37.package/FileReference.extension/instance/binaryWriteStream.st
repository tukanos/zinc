*zinc-character-encoding-core
binaryWriteStream
	"Protocol: streams"
	"Answer a buffered binary write stream on the receiver"

	^ ZnBufferedWriteStream on: (filesystem binaryWriteStreamOn: self path)