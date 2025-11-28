*zinc-pharo-resource-meta-core
writeQueryFields: dictionary on: stream
	"Protocol: converting"
	self writeQueryFields: dictionary withEncoder: ZnCharacterEncoder utf8 on: stream