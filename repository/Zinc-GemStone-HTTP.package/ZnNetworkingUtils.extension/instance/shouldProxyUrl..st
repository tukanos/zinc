*zinc-gemstone-http
shouldProxyUrl: url
  "Protocol: proxy"
	"Even when a proxy is set, some URLs should not be proxied.
	There is no setting for this in the image.
	We exclude localhost and explicit exceptions from being proxied."
	| serverName |
	serverName := self extractServerName: url.
	self isProxySet ifFalse: [ ^ false ].
	(url isLocalHost not
		and: [ (HTTPSocket shouldUseProxy: serverName) not ]) ifTrue: [ ^ true ]
