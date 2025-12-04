*zinc-gemstone-http
handleRetry: exception
	"Protocol: private protocol"
	self noteRetrying: exception.
	self close.
	(Delay forSeconds: self retryDelay) wait.
