private
releaseServerSocket
  "Release our server socket"
  | address port |
  
  serverSocket value ifNil: [ ^ self ].
  address := [ serverSocket value address ] on: Error do: [ nil ].
  port := [ serverSocket value port ] on: Error do: [ nil ].
  (Delay forMilliseconds: 10) wait.
  serverSocket value destroy.
  serverSocket := nil.
  self logServerSocketReleasedAddress: address port: port.
  self isUsingLimitedAcceptStrategy
    ifTrue: [ availableConnections := nil ]