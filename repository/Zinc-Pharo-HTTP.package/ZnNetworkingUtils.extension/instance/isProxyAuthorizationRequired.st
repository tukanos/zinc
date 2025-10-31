*zinc-pharo-http
isProxyAuthorizationRequired
	"Protocol: proxy"
	"Does the proxy require authorization ?"

	^ self isProxySet and: [ NetworkSystemSettings useNetworkAuthentification ]
