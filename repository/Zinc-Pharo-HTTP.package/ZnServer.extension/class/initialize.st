*zinc-pharo-http
initialize
	"Protocol: class initialization"
	ManagedServers := IdentitySet new.
	AlwaysRestart := true.
	self environment
		at: #SessionManager
		ifPresent: [ :manager | manager default registerNetworkClassNamed: self name ]
		ifAbsent: [ Smalltalk addToStartUpList: self; addToShutDownList: self ]