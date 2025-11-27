*zinc-character-encoding-core
default
	"Protocol: accessing"
	"Return a cached instance of the most commonly used encoder,
	which is faster than going via #newForEncoding: that does a subclass search"

	^ Default ifNil: [ Default := self new ]
