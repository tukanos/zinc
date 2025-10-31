*zinc-gemstone-http
lock
	"Protocol: accessing"
	^ lock ifNil: [ lock := TransientMutex new ]
