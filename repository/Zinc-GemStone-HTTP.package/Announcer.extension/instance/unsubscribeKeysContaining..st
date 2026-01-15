*zinc-gemstone-http
unsubscribeKeysContaining: anObject
	"GemStone method for unsubscribing a whole key.
	Pharo and GemStone have different subscriptions logic.  Following code helps
	GemStone to behave similarly as Pharo."
	| classesToBeRemoved |
	classesToBeRemoved := OrderedCollection new.
	subscriptions keysAndValuesDo: [ :class :actions |
		| action|
		action := actions detect: [ :each | each receiver == anObject ] ifNone: [ nil ].
		action ifNotNil: [ classesToBeRemoved add: class ] ].
	classesToBeRemoved do: [ :class | subscriptions removeKey: class ]
