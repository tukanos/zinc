*zinc-gemstone-http
isProxySet
  "Protocol: proxy"

	^ HTTPSocket httpProxyServer isEmptyOrNil not
