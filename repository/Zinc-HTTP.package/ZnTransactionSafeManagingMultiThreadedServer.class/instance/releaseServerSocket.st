private
releaseServerSocket
  "Release our server socket"
  | address port |
  
  self serverSocket ifNil: [ ^ self ].
  address := [ self serverSocket address ] on: Error do: [ nil ].
  port := [ self serverSocket port ] on: Error do: [ nil ].
  (Delay forMilliseconds: 10) wait.
  self serverSocket destroy.
  serverSocket := nil.
  self logServerSocketReleasedAddress: address port: port.
  self isUsingLimitedAcceptStrategy
    ifTrue: [ availableConnections := nil ]