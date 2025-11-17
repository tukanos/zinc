*zinc-gemstone-http
initialize
	"Protocol: class initialization"
	ManagedServers := IdentitySet new.
	AlwaysRestart := true.
	Smalltalk addToStartUpList: self.
	Smalltalk addToShutDownList: self