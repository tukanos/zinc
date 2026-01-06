*zinc-gemstone-http
initialize
  "Protocol: initialization"
	super initialize.
	attributes := Dictionary new.
	created := modified := DateAndTime now
