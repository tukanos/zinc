protocol
unregister: clientWebSocket
  lock
    critical: [ 
      GRPlatform current
        doTransaction: [ webSockets remove: clientWebSocket ifAbsent: [  ] ] ]