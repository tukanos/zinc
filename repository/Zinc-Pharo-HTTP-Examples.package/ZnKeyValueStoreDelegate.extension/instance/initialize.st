*zinc-pharo-http-examples
initialize
	"Protocol: initialization"
	super initialize.
	data := Dictionary new.
	access := Monitor new