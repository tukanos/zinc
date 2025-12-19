*zinc-gemstone-http
initialize
	"Protocol: initialization"
	super initialize.
	self socketStreamClass: (Smalltalk globals at: #ZdcSocketStream ifAbsent: [ SocketStream ]).
	self secureSocketStreamClass: (Smalltalk globals at: #ZdcSecureSocketStream ifAbsent: [ nil ]).
	self sslSessionClass: (Smalltalk globals at: #ZdcGemStoneSSLSession ifAbsent: [ nil ])