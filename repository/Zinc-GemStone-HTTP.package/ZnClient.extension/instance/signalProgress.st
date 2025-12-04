*zinc-gemstone-http
signalProgress
	"Protocol: options"
	"Return true if I signal HTTPProgress notifications during execution."
	
	^ self optionAt: #signalProgress ifAbsent: [ false ]
