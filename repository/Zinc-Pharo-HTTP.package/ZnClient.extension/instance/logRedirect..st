*zinc-pharo-http
logRedirect: url
	"Protocol: private - logging"
	^ (self newLogEvent: ZnClientFollowingRedirectEvent)
		target: url;
		emit
