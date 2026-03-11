*zinc-gemstone-http
ok: entity with: options
	"Protocol: instance creation"
	^ (self statusLine: ZnStatusLine ok with: options)
		entity: entity;
		yourself