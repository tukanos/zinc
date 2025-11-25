*zinc-character-encoding-core
binaryReadStreamOn: aResolvable
	"Protocol: public"
	"Resolve the argument into an absolute path and open a file handle on the file
	at that path. Ask the handle to give us a binary read stream for reading the file."

	^ (self open: aResolvable options: self defaultOptionsForRead) binaryReadStream