*zinc-gemstone-http
initialize
	"Protocol: initialization"
	super initialize.
	timestamp := DateAndTime now.
	id := self nextId.
	processId := ZnUtils currentProcessID
