*zinc-gemstone-character-encoding-core
in: aBlock
	"Protocol: evaluating"
	"Added for ZnCookieJar>>writeNetscapeFormatTo:"
	"Evaluate the given block with the receiver as its argument."

	^ aBlock value: self
