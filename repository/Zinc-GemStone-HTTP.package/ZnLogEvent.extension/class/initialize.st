*zinc-gemstone-http
initialize
	"Protocol: class initialization"
	self startUp.
	self environment
		at: #'SessionManager'
		ifPresent: [ :manager | manager default registerNetworkClassNamed: self name ]
		ifAbsent: [ Smalltalk addToStartUpList: self ]
