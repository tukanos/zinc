*zinc-gemstone-http
socketStreamToUrlDirectly: url
	"Protocol: public"
	| stream address |
	address := SpIPAddress ipAddressForHostName: url host timeout: self timeout.
	stream := (self streamClassForScheme: url scheme)
		openConnectionToHost: address
		port: url portOrDefault
		timeout: self timeout.
	self setSocketStreamParameters: stream.
	"The secure part has moved to ZnClient >> setupTLSTo:"
	^ stream
