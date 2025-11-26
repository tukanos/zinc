*zinc-character-encoding-core
on: aStream encoding: encoding
	"Protocol: instance creation"
	| encoder |
	encoder := encoding asZnCharacterEncoder.
	readStream := ZnCharacterReadStream on: aStream encoding: encoder.
	writeStream := ZnCharacterWriteStream on: aStream encoding: encoder
