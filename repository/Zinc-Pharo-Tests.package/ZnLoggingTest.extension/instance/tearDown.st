*zinc-pharo-tests
tearDown
	"Protocol: running"
	"thisContext crTrace."
	
	ZnLogEvent announcer unsubscribe: self.
	logEventCollection removeAll.
	logEventCollection := nil.
	
	super tearDown