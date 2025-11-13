*zinc-pharo-http
logToTranscript
	"Protocol: convenience"
	self stopLoggingToTranscript.
	^ self announcer 
		when: ZnLogEvent 
		do: [ :event | self crTrace: event ]
		for: self
