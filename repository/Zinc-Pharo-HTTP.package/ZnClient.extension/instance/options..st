*zinc-pharo-http
options: url
	"Protocol: convenience"
	"Execute an HTTP OPTIONS request on url and return the response #contents."

	^ self
		url: url;
		options
