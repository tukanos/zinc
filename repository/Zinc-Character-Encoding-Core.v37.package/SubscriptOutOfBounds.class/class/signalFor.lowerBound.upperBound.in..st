signaling
signalFor: subscript lowerBound: lowerBound upperBound: upperBound in: anObject
	^ self new
		"Not used in Zinc
		 signaler: anObject;"
		subscript: subscript;
		lowerBound: lowerBound;
		upperBound: upperBound;
		signal