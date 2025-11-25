*zinc-character-encoding-core
defaultOptionsForRead
	"Protocol: private-accessing"
	"Return the default options used when reading a file."

	^ self fileOpeningOptionsClass readOnly
