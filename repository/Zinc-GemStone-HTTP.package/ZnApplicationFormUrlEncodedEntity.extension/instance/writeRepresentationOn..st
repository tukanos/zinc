*zinc-gemstone-http
writeRepresentationOn: stream
	"Protocol: writing"
	self contentType charSet
		ifNotNil: [:charSet|
			ZnResourceMetaUtils
				writeQueryFields: self fields
				withEncoder: (ZnCharacterEncoderGS newForEncoding: charSet)
				on: stream]
		ifNil: [
			ZnResourceMetaUtils
				writeQueryFields: self fields
				on: stream ]
