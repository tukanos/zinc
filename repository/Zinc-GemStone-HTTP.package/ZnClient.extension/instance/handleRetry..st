*zinc-gemstone-http
handleRetry: exception
	"Protocol: private"
	self noteRetrying: exception.
	self close.
	(Delay forSeconds: self retryDelay) wait.