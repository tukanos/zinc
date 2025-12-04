*zinc-pharo-http
receiveCookies
	"Protocol: private"
	response cookies do: [ :each |
		each defaultDomain: request url host.
		self session cookieJar add: each ]