instance creation
modifyResponseHeadersWithOptions: options
	^ self new
		at: 'Server' put: (options at: #serverString);
		at: 'Date' put: ZnUtils httpDate;
		yourself