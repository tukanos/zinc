*zinc-gemstone-http
modifyResponseHeadersWith: options
	"Protocol: instance creation"
	^ self new
		at: 'Server' put: (options at: #serverString);
		at: 'Date' put: ZnUtils httpDate;
		yourself