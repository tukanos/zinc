*zinc-pharo-http
logConnectionClosedAddress: address port: port
	"Protocol: private - logging"
	logLevel < 3 ifTrue: [ ^ nil ].
	^ (self newLogEvent: ZnClientConnectionClosedEvent)
		address: address;
		port: port;
		emit
