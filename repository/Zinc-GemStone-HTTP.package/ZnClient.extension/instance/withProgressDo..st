*zinc-gemstone-http
withProgressDo: block
	"Protocol: private"
	^ ZnSignalProgress value
		ifNil: [
			ZnSignalProgress 
				value: self signalProgress 
				during: [ ^ block value ] ]
		ifNotNil: [ 
			block value ]
