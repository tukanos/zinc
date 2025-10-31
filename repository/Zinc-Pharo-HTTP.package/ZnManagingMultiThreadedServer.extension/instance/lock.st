*zinc-pharo-http
lock
	"Protocol: accessing"
	^ lock ifNil: [ lock := Mutex new ]
