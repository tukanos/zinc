*zinc-gemstone-http
logIgnoringExceptionOnReusedConnection: exception
	"Protocol: private - logging"
	logLevel < 3 ifTrue: [ ^ nil ].
	^ (self newLogEvent: ZnClientIgnoringExceptionOnConnectionReuseEvent)
		exception: exception;
		emit
