*zinc-pharo-tests
testEntityTooLarge
	"Protocol: testing"
	self usingClassicSocketStreamsOnWindowsDo: [
		self withServerDo: [ :server |
			server maximumEntitySize: self entitySizeLimit.
			self deny: server debugMode.
			self assertEntityTooLarge: server localUrl ] ]