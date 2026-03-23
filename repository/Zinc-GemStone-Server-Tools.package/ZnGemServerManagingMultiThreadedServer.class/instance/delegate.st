options
delegate
	"Return the optional delegate, the object that will be sent #handleRequest: 
	to handle a request and produce a response."

	^ self 
		optionAt: #delegate
		ifAbsentPut: [ ZnDefaultGsTransactionalServerDelegate new server: self gemServer; yourself ]