*zinc-gemstone-resource-meta-core
writeQueryFields: dictionary on: stream
	"Protocol: converting"
	self writeQueryFields: dictionary withEncoder: ZnCharacterEncoderGS utf8 on: stream