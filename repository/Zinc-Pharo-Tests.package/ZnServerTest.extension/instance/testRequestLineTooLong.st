*zinc-pharo-tests
testRequestLineTooLong
	"Protocol: testing"
	self usingClassicSocketStreamsOnWindowsDo: [
		self withServerDo: [ :server |
		self deny: server debugMode.
		self assertRequestLineTooLong: server localUrl ] ]