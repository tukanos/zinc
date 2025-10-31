*zinc-gemstone-http
initializeServerSocket
  "Protocol: private"
  "Set up a new server socket and listen on it"

  self log debug: 'Initializing server socket'.
  serverSocket := self bindingAddress
    ifNil: [ ZnNetworkingUtils serverSocketOn: self port ]
    ifNotNil: [ ZnNetworkingUtils serverSocketOn: self port interface: self bindingAddress ].
  self log debug: 'Initialized server socket'
