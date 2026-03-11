*zinc-gemstone-http
responseHeaders: options
	"Protocol: accessing"
	^ options
		ifNil: [ self defaultResponseHeaders ]
		ifNotNil: [ self modifyResponseHeadersWith: options ]