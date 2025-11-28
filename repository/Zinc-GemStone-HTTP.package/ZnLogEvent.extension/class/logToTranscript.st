*zinc-gemstone-http
logToTranscript
	"Protocol: convenience"
	self stopLoggingToTranscript.

	^ self announcer 
		on: ZnLogEvent 
		do: [ :event | self crTrace: event ]
		for: self
