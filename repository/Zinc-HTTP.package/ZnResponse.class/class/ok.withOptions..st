instance creation
ok: entity withLocalOptions: options
	^ (self statusLine: ZnStatusLine ok withOptions: options)
		entity: entity;
		yourself