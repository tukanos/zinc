*zinc-gemstone-http
noteIgnoringExceptionOnReusedConnection: exception
	"Protocol: notifications"
	self log debug: [ exception printString, ' ignored on reused connection' ]
