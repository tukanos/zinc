logging
logGeneric: subject
	ZnWebSocketGenericLogEvent new
		subject: subject;
		emit