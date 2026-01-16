*zinc-pharo-tests
testTooManyHeaders
	"Protocol: testing"
	self usingClassicSocketStreamsOnWindowsDo: [
		self withServerDo: [ :server |
			self deny: server debugMode.
			self assertTooManyHeaders: server localUrl ] ]