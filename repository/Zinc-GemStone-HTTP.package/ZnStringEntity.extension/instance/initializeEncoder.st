*zinc-gemstone-http
initializeEncoder
	"Protocol: private"
	"If the content-type specifies an encoding, use that.
	If not, use the value of ZnDefaultCharacterEncoder,
	if that is not set, fall back to UTF-8"

	| charSet newEncoder |
	self hasEncoder
		ifTrue: [ ^ self ].
	newEncoder := ( charSet := contentType charSet )
		ifNil: [ ZnDefaultCharacterEncoder value ]
		ifNotNil: [
			( ZnCharacterEncoderGS newForEncoding: charSet )
				beLenient;
				yourself ].
	self encoder: newEncoder