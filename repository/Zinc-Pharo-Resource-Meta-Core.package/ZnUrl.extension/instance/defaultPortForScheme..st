*zinc-pharo-resource-meta-core
defaultPortForScheme: aScheme
	"Protocol: accessing"
	(#(http ws) includes: aScheme) ifTrue: [ ^ 80 ].
	(#(https wss) includes: aScheme) ifTrue: [ ^ 443 ].
	^ nil