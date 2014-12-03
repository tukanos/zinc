protocol
register: clientWebSocket
  lock
    critical: [ GRPlatform current doTransaction: [ webSockets add: clientWebSocket ] ]