*zinc-gemstone-http
timeout
	"Protocol: options"
	"Return the timeout in seconds for network socket stream operations
	like connecting, reading and writing. Defaults to a global setting."
	
	(self localOptions at: #socketStreamTimeout) ifNil: [ self localOptions at: #socketStreamTimeout put: ZnNetworkingUtils defaultSocketStreamTimeout ].

	^ self localOptions at: #socketStreamTimeout