*zinc-character-encoding-core
upTo: value
	"Protocol: accessing"
	"Read upto but not including value and return them as a collection.
	If value is not found, return the entire contents of the stream.
	This could be further optimzed."

	^ self collectionSpecies
		streamContents: [ :writeStream | | element |
			[ self atEnd or: [ (element := self next) = value ] ] whileFalse: [
				writeStream nextPut: element ] ]
