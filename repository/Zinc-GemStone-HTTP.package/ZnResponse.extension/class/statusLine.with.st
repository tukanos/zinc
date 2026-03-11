*zinc-gemstone-http
statusLine: statusLine with: options
	"Protocol: instance creation"
	^ self new
		statusLine: statusLine;
		headers: (ZnHeaders responseHeaders: options);
		yourself