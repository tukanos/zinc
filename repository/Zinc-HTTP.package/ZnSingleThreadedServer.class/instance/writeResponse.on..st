request handling
writeResponse: response on: stream
	"Write response to stream and flush the stream"
	response isStreamingResponse
    		ifTrue: [ GRPlatform current doTransaction: [ response writeOn: stream ] ]
    		ifFalse: [ response writeOn: stream ].	
	stream flush.
	self logResponse: response
