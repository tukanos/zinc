*zinc-pharo-http
executeRequestResponse
	"Protocol: private - protocol"
	| initialMilliseconds requestDuration responseDuration |
	initialMilliseconds := Time millisecondClockValue.
	self writeRequest.
	requestDuration := self logRequestWrittenStarted: initialMilliseconds.
	initialMilliseconds := Time millisecondClockValue.
	self readResponse.
	responseDuration := self logResponseReadStarted: initialMilliseconds.
	self logClientTransactionRequestDuration: requestDuration responseDuration: responseDuration