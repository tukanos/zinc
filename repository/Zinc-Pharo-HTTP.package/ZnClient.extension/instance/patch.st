*zinc-pharo-http
patch
	"Protocol: operations"
	"Execute a HTTP PATCH on the request set up and return the response #contents."

	^ self
		method: #PATCH;
		execute
