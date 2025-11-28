*zinc-gemstone-http
extractServerName: url
	"Protocol: private"
	"From URL extract server name"
	| bare urlString |
	urlString := url asString.
	bare := (urlString asLowercase beginsWith: 'http://') ifTrue: [
			( urlString asLowercase beginsWith: 'http://')
				ifTrue: [ urlString copyFrom: 8 to: urlString size ]
				ifFalse: [ urlString ] ]
		ifFalse: [
			( urlString asLowercase beginsWith: 'https://')
				ifTrue: [ urlString copyFrom: 9 to: url size ]
				ifFalse: [ urlString ] ].
	^ bare copyUpTo: $/. "serverName"