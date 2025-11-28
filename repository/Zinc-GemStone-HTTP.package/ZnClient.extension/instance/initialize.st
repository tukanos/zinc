*zinc-gemstone-http
initialize
	"Protocol: initialization"
	super initialize.
	request := ZnRequest empty.
	self loggingOn
