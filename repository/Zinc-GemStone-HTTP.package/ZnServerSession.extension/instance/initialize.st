*zinc-gemstone-http
initialize
  "Protocol: initialization"
	super initialize.
	attributes := GRSmallDictionary new.
	created := modified := DateAndTime now
