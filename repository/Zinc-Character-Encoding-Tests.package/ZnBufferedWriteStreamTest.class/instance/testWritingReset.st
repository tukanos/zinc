tests
testWritingReset

	| file writeStream readStream |
	file := 'test.txt' asFileReference ensureCreateFile.

	writeStream := file binaryWriteStream.
	writeStream nextPutAll: 'towertalk'.
	writeStream reset.
	writeStream nextPutAll: 'small'.
	writeStream close.

	readStream := file readStream.
	self assert: readStream contents equals: 'smalltalk'.
	file ensureDelete