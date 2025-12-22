*zinc-gemstone-http
setupTLSTo: url
	"Protocol: private"
	(ZnNetworkingUtils shouldProxyUrl: url)
		ifTrue: [ | originalRequest |
			"http://www.ietf.org/rfc/rfc2817.txt (section 5)"
			"https://en.wikipedia.org/wiki/HTTP_tunnel#HTTP_CONNECT_tunneling"
			originalRequest := request copy.
			request entity: nil. "to prevent #resetEntity from being called, resulting in #close of the shared entity"
			self method: #CONNECT; writeRequest; readResponse.
			response isSuccess ifFalse: [ self error: 'Failed to CONNECT to proxy for TLS/SSL' ].
			connection := ZnNetworkingUtils secureSocketStreamOn: connection socket.
			request := originalRequest ].

	"GemStone - without any certificate we need to disable certiticate verification"
	self certificate 
		ifNil: [ connection sslSession secureSocket disableCertificateVerification ]
		ifNotNil: [ connection sslSession certificateName: self certificate.
					connection sslSession secureSocket enableCertificateVerification ].

	[ connection sslSession serverName: url host ]
		on: (ZnUtils exceptionSet: #( #SocketError #PrimitiveFailed ))
		do: [ :error | connection sslSession error: error asString ].

	connection connect.
	
	((ZnCurrentOptions at: #verifyCertificates) 
			and: [ connection sslSession certificateVerificationState ~= 0 ])
		ifTrue: [ 
			ZnCertificateVerificationFailed new 
				verificationState: connection sslSession certificateVerificationState;
				signal ]
