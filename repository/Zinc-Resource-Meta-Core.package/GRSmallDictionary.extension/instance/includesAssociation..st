*zinc-resource-meta-core
includesAssociation: anAssociation
	"Protocol: testing"
	^ (self
		associationAt: anAssociation key
		ifAbsent: [ ^ false ]) value = anAssociation value