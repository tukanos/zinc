*zinc-gemstone-http
logGsServerError: exception message: message
	"Protocol: private-logging"
	"For GemStone, we want to log the exception description (conditionally snapping off a continuation) and
	dump the error information to the gem log."

	^ (self newLogEvent: ZnGsServerErrorEvent)
		exception: exception;
		message: message;
		emit