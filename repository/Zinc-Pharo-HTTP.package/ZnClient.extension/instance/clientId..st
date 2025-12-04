*zinc-pharo-http
clientId: anObject
	"Protocol: options"
	"Set the id for this HTTP client to anObject. Defaults to nil.
	Can be used identify different clients' log events."

	^ self optionAt: #clientId put: anObject
