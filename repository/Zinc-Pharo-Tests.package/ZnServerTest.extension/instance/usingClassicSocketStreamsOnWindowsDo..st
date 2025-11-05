*zinc-pharo-tests
usingClassicSocketStreamsOnWindowsDo: block
	"Protocol: private"
	| originalSocketStreamClass |
	originalSocketStreamClass := ZnNetworkingUtils default socketStreamClass.
	self runningOnWindows
		ifTrue: [ ZnNetworkingUtils default socketStreamClass: SocketStream ].
	block
		ensure: [ ZnNetworkingUtils default socketStreamClass: originalSocketStreamClass ]
