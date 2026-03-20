accessing
numberOfOpenConnections
	^ self hasOpenConnections
		ifTrue: [ self connections size ]
		ifFalse: [ 0 ]