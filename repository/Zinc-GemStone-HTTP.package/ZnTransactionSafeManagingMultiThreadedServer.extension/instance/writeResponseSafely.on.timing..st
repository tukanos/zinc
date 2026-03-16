*zinc-gemstone-http
writeResponseSafely: response on: streamTransientStackValue timing: timing
	"Protocol: request handling"
	"Write response to stream, when the connection is closed or times out we ignore this"

	[ self writeResponse: response on: streamTransientStackValue timing: timing ]
		on: self writeResponseTerminationExceptionSet
		do: [ :exception | self logServerWriteError: exception.
				self logServerGeneric: (GsProcess stackReportToLevel: 100) ]