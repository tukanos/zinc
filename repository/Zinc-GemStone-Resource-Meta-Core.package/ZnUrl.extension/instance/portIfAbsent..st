*zinc-gemstone-resource-meta-core
portIfAbsent: valuable
	"Protocol: accessing"
	^ self hasPort
		ifTrue: [ self port ]
		ifFalse: [ valuable isBlock
						ifTrue: [ valuable value ]
						ifFalse: [ valuable ] ]