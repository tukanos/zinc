service instance-server
startServerOn: port
  "start server in current vm."

  | server |
  server := (self serverClass on: port)
    delegate: self delegate;
    debugMode: self debugMode;
    log: self log;
    yourself.
  self scriptLogEvent: 'Start: ' , server class printString object: server.
  server start.
  [ true ] whileTrue: [ (Delay forSeconds: 10) wait ]