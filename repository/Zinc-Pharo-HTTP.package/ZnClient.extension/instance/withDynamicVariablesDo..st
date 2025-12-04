*zinc-pharo-http
withDynamicVariablesDo: block
	"Protocol: private"
	^ self localOptions conditionallyDuring: block
