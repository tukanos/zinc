*zinc-character-encoding-core
defaultOptionsForWrite
	"Protocol: private-accessing"
	"Return the default options used when writing a file."

	^self fileOpeningOptionsClass writeOnly
		create;
		yourself
