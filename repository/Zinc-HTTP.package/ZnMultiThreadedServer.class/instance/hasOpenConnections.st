testing
hasOpenConnections
	^ self connections notNil and: [ self connections isNotEmpty ]