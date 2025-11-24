*zinc-character-encoding-core
printOn: aStream
	"Protocol: printing"
	aStream
		nextPutAll: 'a ';
		nextPutAll: self class name
