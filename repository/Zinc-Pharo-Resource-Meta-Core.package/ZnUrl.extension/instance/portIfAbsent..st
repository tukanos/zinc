*zinc-pharo-resource-meta-core
portIfAbsent: valuable
	"Protocol: accessing"
	^ self hasPort
		ifTrue: [ self port ]
		ifFalse: valuable