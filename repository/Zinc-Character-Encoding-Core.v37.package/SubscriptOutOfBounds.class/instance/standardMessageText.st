printing
standardMessageText
	"Generate a standard textual description"
	^ String streamContents: [ :stream |
		  self subscript
			  ifNil: [ stream << 'subscript' ]
			  ifNotNil: [ stream print: self subscript ].
		  (self lowerBound isNotNil and: [ self upperBound isNotNil ]) ifTrue: [
			  stream
				  << ' is not between ';
				  print: self lowerBound;
				  << ' and ';
				  print: self upperBound ].
		  self signaler ifNotNil: [
			  stream
				  nextPutAll: ' in ';
				  print: self signaler ] ]