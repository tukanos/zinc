*zinc-pharo-http
interactivePolicy
	"Protocol: initialization"
	self
		beOneShot;
		ifFail: [ :exception |
			self inform: 'HTTP call failed with ', exception printString.
			nil ]