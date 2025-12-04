*zinc-pharo-http
certificate
	"Protocol: options"
	"Return the TLS/SSL certificate to be used, or nil for none."

	^ self optionAt: #certificate ifAbsent: [ nil ]
