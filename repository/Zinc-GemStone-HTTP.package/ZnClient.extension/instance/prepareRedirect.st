*zinc-gemstone-http
prepareRedirect
"Protocol: private - protocol"
	"We implement the common behavior that POST/PUT redirects turn into GET request.
	Note also that the body data is dropped, as well as the cookie handling."

	| targetUrl |
	targetUrl := self redirectUrl.
	self noteRedirect: targetUrl.
	self receiveCookies.
	self prepareNextRequest.
	(#(307 308) includes: response code)
		ifFalse: [
	(#(POST PUT) includes: request method)
		ifTrue: [ self method: #GET ].
	request hasEntity
				ifTrue: [ request resetEntity: nil ] ].
	self url: targetUrl.
	self sendCookies