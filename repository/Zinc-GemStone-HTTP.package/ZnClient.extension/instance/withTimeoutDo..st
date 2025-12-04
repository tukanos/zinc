*zinc-gemstone-http
withTimeoutDo: block
	"Protocol: private"
	^ ZnConnectionTimeout value
		ifNil: [
			ZnConnectionTimeout 
				value: self timeout 
				during: [ ^ block value ] ]
		ifNotNil: [ 
			block value ]
