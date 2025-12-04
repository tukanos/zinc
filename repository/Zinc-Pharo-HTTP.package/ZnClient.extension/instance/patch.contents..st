*zinc-pharo-http
patch: url contents: object
	"Protocol: convenience"
	"Execute an HTTP PATCH request on url with object as request #contents:
	and return the response #contents."

	^ self
		url: url;
		contents: object;
		patch
