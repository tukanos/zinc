*zinc-pharo-http
writeRequest
	"Protocol: private - protocol"
	self signalHTTPProgress: 'Writing request'.
	self withDefaultCharacterEncoderDo: [ request writeOn: connection ].
	connection flush
