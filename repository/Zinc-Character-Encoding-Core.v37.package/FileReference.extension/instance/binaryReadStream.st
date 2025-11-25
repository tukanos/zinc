*zinc-character-encoding-core
binaryReadStream
	"Protocol: streams"
	"Answer a buffered binary read stream on the receiver"

	^ ZnBufferedReadStream on: (filesystem binaryReadStreamOn: self path)