signaling
signalFor: subscript lowerBound: lowerBound upperBound: upperBound in: anObject
	^ self new
		signaler: anObject;
		subscript: subscript;
		lowerBound: lowerBound;
		upperBound: upperBound;
		signal