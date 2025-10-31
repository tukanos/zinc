*zinc-gemstone-http
isProxyAuthorizationRequired
  "Protocol: proxy"
	"Does the proxy require authorization ?"

	^ self isProxySet and: [ HTTPSocket proxyCredentials notNil ]
