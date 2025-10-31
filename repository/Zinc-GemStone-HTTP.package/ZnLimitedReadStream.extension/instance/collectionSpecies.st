*zinc-gemstone-http
collectionSpecies
	"Protocol: accessing"
	"I can be set to binary or ascii explicitely.
	If not set, delegate to our wrapped stream if possible."

	^ binary notNil
		ifTrue: [ 
			binary ifTrue: [ ByteArray ] ifFalse: [ String ] ]
		ifFalse: [
			(stream respondsTo: #collectionSpecies)
				ifTrue: [ stream collectionSpecies ]  
				ifFalse: [ stream isBinary ifTrue: [ ByteArray ] ifFalse: [ String ] ] ]
