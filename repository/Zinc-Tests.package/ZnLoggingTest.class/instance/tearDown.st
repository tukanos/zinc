running
tearDown

	"thisContext crTrace."
	(ZnLogEvent announcer respondsTo: #'unsubscribeKeysContaining:')
		ifTrue: [ ZnLogEvent announcer unsubscribeKeysContaining: self ] "GemStone"
		ifFalse: [ZnLogEvent announcer unsubscribe: self ]. "Pharo"
	
	logEventCollection removeAll.
	logEventCollection := nil.
	
	super tearDown