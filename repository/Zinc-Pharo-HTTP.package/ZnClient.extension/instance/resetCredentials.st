*zinc-pharo-http
resetCredentials
	"Protocol: accessing"
	session ifNotNil: [ session resetCredentials ]
