*zinc-gemstone-http
log
	"Protocol: private"
	^ log ifNil: [ log := ZnLogSupport new ]
