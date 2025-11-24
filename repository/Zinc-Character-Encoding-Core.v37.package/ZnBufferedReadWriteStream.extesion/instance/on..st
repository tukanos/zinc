*zinc-character-encoding-core
on: aStream
	"Protocol: instance creation"

	lastRead := true.
	readStream := ZnBufferedReadStream on: aStream.
	writeStream := ZnBufferedWriteStream on: aStream
