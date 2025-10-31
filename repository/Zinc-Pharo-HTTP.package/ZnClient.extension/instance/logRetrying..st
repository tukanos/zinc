*zinc-pharo-http
logRetrying: exception
	"Protocol: private - logging"
	logLevel < 3 ifTrue: [ ^ nil ].
	^ (self newLogEvent: ZnClientRetryingEvent)
		exception: exception;
		emit
