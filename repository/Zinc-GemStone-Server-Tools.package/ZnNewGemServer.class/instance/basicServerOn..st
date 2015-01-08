service instance-server
basicServerOn: portOrNil
  "forked by caller"

  | znServer |
  znServer := self serverInstance.
  [ 
  znServer initializeServerSocket.
  self
    gemServer: [ 
      znServer serverSocket isValid
        ifTrue: [ znServer serveConnectionsOn: znServer serverSocket ] ]
    beforeUnwind: znServer releaseServerSocket ]
    repeat