*zinc-gemstone-tests
setUp
	"Protocol: running"

	super setUp.

	ZnLogEvent announcerReset.
	logEventCollection := OrderedCollection new.

	ZnLogEvent announcer
		subscribe: ZnLogEvent
		do: [ :event | logEventCollection add: event ]
		for: self