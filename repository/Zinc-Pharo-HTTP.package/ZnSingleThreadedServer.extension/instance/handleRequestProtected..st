*zinc-pharo-http
handleRequestProtected: request
	"Protocol: request handling"
	"Handle request and return a response.
	If a ZnRespond notification is signaled, return its response directly.
	If an Error is thrown, return a HTTP Server Error response."

	^ [ [ self authenticateAndDelegateRequest: request ]
			on: ZnRespond
			do: [ :notification | notification response ] ]
		on: Error
		do: [ :exception |
			self debugMode
				ifTrue: [ exception pass ]
				ifFalse: [
					self logServerHandlerError: exception.
					ZnResponse serverError: exception printString ] ]
