*zinc-pharo-http
initialize
	"Protocol: initialization"
	super initialize.
	attributes := SmallDictionary new.
	created := modified := DateAndTime now
