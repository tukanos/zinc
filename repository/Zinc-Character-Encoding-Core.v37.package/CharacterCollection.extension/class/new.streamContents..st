*Zinc-Character-Encoding-Core
new: newSize streamContents: blockWithArg
	"Protocol: instance creation"

	| stream |
	stream := WriteStreamPortable on: (self new: newSize).
	blockWithArg value: stream.
	stream position = newSize
		ifTrue: [ ^stream originalContents ]
		ifFalse: [ ^stream contents ]
