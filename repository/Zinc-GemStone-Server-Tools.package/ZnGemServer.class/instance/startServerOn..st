service instance-server
startServerOn: port
  "start server in current vm."

  | server |
  server := (self serverClass on: port)
    delegate: self delegate;
    debugMode: false;
    log: self log;
    yourself.
  server start.
  [ true ] whileTrue: [ (Delay forSeconds: 10) wait ]