*zinc-gemstone-http
initialize 
  "Protocol: initialize-release"
	self timeStamp: TimeStamp now.
	self category: #info.  
	self processId: ZnUtils currentProcessID
