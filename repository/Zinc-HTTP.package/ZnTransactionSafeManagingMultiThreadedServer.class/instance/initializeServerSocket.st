private
initializeServerSocket
    "Set up a new server socket and listen on it"
    "This code normally lives in ZnSingleThreadedServer, overwritten for GemStone"

    self logServerGeneric: 'Initializing server socket'.
    
    "as long as I am in memory prevent stubbing of my instance variables ... 
    will stay in memory as long as I am referenced from stack.."
    self _setNoStubbing.  
    
    serverSocket := TransientStackValue value: 
        (self bindingAddress
            ifNil: [ ZnNetworkingUtils serverSocketOn: self port ]
            ifNotNil: [ "if I am committed, then do not persist server socket instance"
                ZnNetworkingUtils serverSocketOn: self port interface: self bindingAddress ]).  
    
    self logServerGeneric: 'Initialized server socket'.
    
    self isUsingLimitedAcceptStrategy 
      ifTrue: [ "Create a Semaphore that counts the available connections that can accept"
        availableConnections := Semaphore new.
        (ZnCurrentOptions at: #maximumNumberOfConcurrentConnections)
            timesRepeat: [ availableConnections signal ] ]