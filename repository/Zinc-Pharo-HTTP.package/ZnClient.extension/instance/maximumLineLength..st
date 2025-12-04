*zinc-pharo-http
maximumLineLength: integer
	"Protocol: options"
	"Set the maximum line length in bytes that I will read from a stream before signalling ZnLineTooLong"

	self localOptions at: #maximumLineLength put: integer
