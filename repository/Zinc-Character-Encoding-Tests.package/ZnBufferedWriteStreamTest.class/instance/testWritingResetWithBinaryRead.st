tests
testWritingResetWithBinaryRead

	| file writeStream readStream |
	file := 'test.txt' asFileReference ensureCreateFile.

	writeStream := file binaryWriteStream.
	writeStream nextPutAll: 'towertalk'.
	writeStream reset.
	writeStream nextPutAll: 'small'.
	writeStream close.

	readStream := file binaryReadStream.
	self assert: readStream contents equals: 'smalltalk'.
	file ensureDelete