*zinc-gemstone-http
logToTranscript
	"Protocol: logging"
	"Setup logging to the Transcript"

	self log addListener: ZnTranscriptLogger new
