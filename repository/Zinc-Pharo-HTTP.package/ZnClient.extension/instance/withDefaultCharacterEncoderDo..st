*zinc-pharo-http
withDefaultCharacterEncoderDo: block
	"Protocol: private"
	^ self defaultEncoder = ZnDefaultCharacterEncoder value
			ifTrue: block
			ifFalse: [
				ZnDefaultCharacterEncoder
					value: self defaultEncoder
					during: block ]
