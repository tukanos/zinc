accessing
parameters
	parameters ifNil: [
	parameters := Smalltalk globals includesKey: #'SmallDictionary'
		ifTrue: [ SmallDictionary new ] "Pharo"
		ifFalse: [ GRSmallDictionary new ] ] "GemStone"
	^ parameters