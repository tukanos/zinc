service instance-server
startServerOn: port
  "start server in current vm."

  | server |
  server := (self serverClass on: port)
    delegate: self delegate;
    debugMode: self debugMode;
    log: self log;
    yourself.
  server start.
  [ true ]
    whileTrue: [ 
      (Delay forSeconds: 10) wait.
      self log info: 'startServerOn Delay expired.' ]