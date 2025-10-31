*zinc-pharo-http
initialize
	"Protocol: initialization"
	super initialize.
	request := ZnRequest empty.
	self loggingOn
