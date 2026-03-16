request handling
writeResponse: response on: streamTransientStackValue timing: timing
	"Write response to stream and flush the stream"

	| initialMilliseconds |
	initialMilliseconds := Time millisecondClockValue.
	self withDefaultCharacterEncoderDo: [
		response isStreamingResponse
			ifTrue: [
				GRPlatform current
					doTransaction: [ response writeOn: streamTransientStackValue value ] ]
			ifFalse: [ response writeOn: streamTransientStackValue value ].
	streamTransientStackValue value flush.
	timing responseDuration: (self logResponseWritten: response started: initialMilliseconds)