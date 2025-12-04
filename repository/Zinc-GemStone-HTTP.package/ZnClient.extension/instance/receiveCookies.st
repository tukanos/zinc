*zinc-gemstone-http
receiveCookies
	"Protocol: private"
	response cookies do: [ :each |
		each defaultDomain: request url host.
		self session cookieJar add: each.
		self log debug: [ 'Received cookie: ', each printString ]  ]