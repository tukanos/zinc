*zinc-character-encoding-core
binaryWriteStreamOn: aResolvable
	"Protocol: public"
	"Resolve the argument into an absolute path and open a file handle on the file
	at that path. Ask the handle to give us a binary write stream for writing into the file."

	^ (self open: aResolvable options: self defaultOptionsForWrite) binaryWriteStream