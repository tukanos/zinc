*zinc-gemstone-http
logRequestWrittenStarted: initialMilliseconds
	"Protocol: private - logging"
	^ logLevel < 3
		ifTrue: [ Time millisecondsSince: initialMilliseconds ]
		ifFalse: [
			(self newLogEvent: ZnRequestWrittenEvent)
				request: request;
				duration: (Time millisecondsSince: initialMilliseconds);
				emit;
				duration ]
