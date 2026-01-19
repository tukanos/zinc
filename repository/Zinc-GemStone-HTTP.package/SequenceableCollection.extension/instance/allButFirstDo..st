*zinc-gemstone-http
allButFirstDo: aBlock
	"Executes aBlock on each of the receiver's elements except for the first one"

	2 to: self size do:
		[:index | aBlock value: (self at: index)]