*zinc-pharo-http
reader: block
	"Protocol: options"
	"Customize how responses are read from a stream, see #reader, see #beBinary"

	self optionAt: #reader put: block
