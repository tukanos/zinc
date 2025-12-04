*zinc-pharo-http
signalHTTPProgress: message
	"Protocol: private"
	(ZnCurrentOptions at: #signalProgress)
		ifTrue: [ HTTPProgress signal: message ]
