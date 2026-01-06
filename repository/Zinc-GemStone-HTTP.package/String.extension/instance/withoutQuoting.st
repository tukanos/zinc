*zinc-gemstone-http
withoutQuoting
	"remove the initial and final quote marks (single quote for string, or double quotes for comments), if present (and if matches nesting quotes). Have a look at testWithoutQuoting. If you want to remove single/double quotes not in first and last positions of the strings, have a look at copyWithout: $' "

	| quote |
	self size < 2 ifTrue: [ ^ self ].
	quote := self first.
	^ (quote = self last and: [ quote = $' or: [ quote = $" ] ])
		ifTrue: [ self copyFrom: 2 to: self size - 1 ]
		ifFalse: [ self ]