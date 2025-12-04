*zinc-gemstone-http
interactivePolicy
	"Protocol: initialize-release"
	self 
		beOneShot;
		ifFail: [ :exception | 
			self inform: 'HTTP call failed with ', exception printString.
			nil ]
