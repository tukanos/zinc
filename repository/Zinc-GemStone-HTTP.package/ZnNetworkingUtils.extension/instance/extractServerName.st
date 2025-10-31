*zinc-gemstone-http
extractServerName: url
  "Protocol: private"
	"From URL extract server name"
	| bare |
	bare := url asLowercase beginsWith: 'http://' ifTrue: [
			( url asLowercase beginsWith: 'http://')
				ifTrue: [ url copyFrom: 8 to: url size ]
				ifFalse: [ url ] ]
		ifFalse: [
			( url asLowercase beginsWith: 'https://')
				ifTrue: [ url copyFrom: 9 to: url size ]
				ifFalse: [ url ] ].
	^ bare copyUpTo: $/. "serverName"
