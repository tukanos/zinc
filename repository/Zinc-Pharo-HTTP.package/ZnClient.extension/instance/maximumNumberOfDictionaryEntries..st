*zinc-pharo-http
maximumNumberOfDictionaryEntries: anInteger
	"Protocol: options"
	"Set the maximum number of entries allowed in ZnMutliValueDictionaries before signalling ZnTooManyDictionaryEntries. This protects us from overflow attacks."

	self localOptions at: #maximumNumberOfDictionaryEntries put: anInteger
