accessing
responseHeaders: options
	^ options
		ifNil: [ self defaultResponseHeaders ]
		ifNotNil: [ self modifyResponseHeadersWithOptions: options ]