*zinc-gemstone-tests
tearDown
	"Protocol: running"
	"thisContext crTrace."
	
	ZnLogEvent announcer unsubscribe: self.
	"To check if unsubscribe announcer mechanism works correctly"
	self assert: ZnLogEvent announcer numberOfSubscriptions equals: 0.
	logEventCollection removeAll.
	logEventCollection := nil.

	super tearDown