request handling
serveConnectionsOn: listeningSocketTransientStackValue
  "We wait up to acceptWaitTimeout seconds for an incoming connection.
  If we get one we wrap it in a SocketStream and #executeRequestResponseLoopOn: on it.
  Overwritten to handle logic related to concurrent connections."

  | stream socket |
  socket := TransientStackValue value: 
              (self acceptOn: listeningSocketTransientStackValue value).
  socket value ifNil: [ ^ self noteAcceptWaitTimedOut ].
  stream := [  TransientStackValue value: (self socketStreamOn: socket value) ]
      on: ZnTooManyConcurrentConnections 
      do: [ ^ self ].
  [ [ [ self executeRequestResponseLoopOn: stream ]
    ensure: [ self logConnectionClosed: stream value.
        self closeSocketStream: stream value ] ]
        ifCurtailed: [ socket value destroy ] ]
          forkAt: Processor lowIOPriority
          named: self workerProcessName