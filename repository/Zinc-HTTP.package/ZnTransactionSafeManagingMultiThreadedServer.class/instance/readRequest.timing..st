request handling
readRequest: streamTransientStackValue timing: timing
	"Read a request from stream.
	We add a virtual header containing the remote IP address of the client"

	| request initialMilliseconds |
	initialMilliseconds := Time millisecondClockValue.
	request := self withDefaultCharacterEncoderDo: [ self reader value: streamTransientStackValue value ].
	request headers
		at: ZnConstants remoteAddressHeader
		put: (ZnNetworkingUtils ipAddressToString: streamTransientStackValue value socket remoteAddress).
	timing requestDuration: (self logRequestRead: request started: initialMilliseconds).
	^ request