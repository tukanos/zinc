*zinc-gemstone-http
cleanupConnection
	"Protocol: private"
	(self isOneShot or: [ request notNil and: [ request wantsConnectionClose ] ])
		ifTrue: [
			self close ]