tests
testClientLogging

	| client count |
	(client := ZnClient new)
		clientId: #C1;
		beOneShot.
	client get: self smallHtmlUrl.
	client close.
	count := ZnLogEvent announcer numberOfSubscriptions.
	(ZnLogEvent announcer respondsTo: #'unsubscribeKeysContaining:')
		ifTrue: [ ZnLogEvent announcer unsubscribeKeysContaining: self ]
		ifFalse: [ZnLogEvent announcer unsubscribe: self ].
	self
		assert: ZnLogEvent announcer numberOfSubscriptions
		equals: count - 1.
	self deny: logEventCollection isEmpty.
	self assert: logEventCollection anyOne clientId equals: #C1