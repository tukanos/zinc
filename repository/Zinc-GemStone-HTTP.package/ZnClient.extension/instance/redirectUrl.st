*zinc-gemstone-http
redirectUrl
	"Protocol: private - protocol"
	"We support relative locations although they are not the standard (http://en.wikipedia.org/wiki/HTTP_location)"

	| redirectUrl |
	redirectUrl := response location asZnUrl.
	^ redirectUrl isAbsolute
		ifTrue: [ redirectUrl ]
		ifFalse: [ redirectUrl inContextOf: request url ]