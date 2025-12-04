*zinc-gemstone-resource-meta-core
defaultPortForScheme: aScheme
	"Protocol: accessing"
	scheme = #file ifTrue: [ ^ nil ].
	(#(http ws) includes: aScheme) ifTrue: [ ^ 80 ].
	(#(https wss) includes: aScheme)  ifTrue: [ ^ 443 ].
	(ZnUnknownScheme scheme: aScheme) signal
