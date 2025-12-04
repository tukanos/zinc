*zinc-pharo-http
newLogEvent: logEventClass
	"Protocol: private - logging"
	^ logEventClass new
		clientId: self clientId;
		yourself
