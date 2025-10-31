*zinc-pharo-http
handleRetry: exception
	"Protocol: private"
	self logRetrying: exception.
	self close.
	(Delay forSeconds: self retryDelay) wait.