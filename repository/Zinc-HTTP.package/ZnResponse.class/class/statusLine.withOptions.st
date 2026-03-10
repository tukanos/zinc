instance creation
statusLine: statusLine withOptions: options
	^ self new
		statusLine: statusLine;
		headers: (ZnHeaders responseHeaders: options);
		yourself