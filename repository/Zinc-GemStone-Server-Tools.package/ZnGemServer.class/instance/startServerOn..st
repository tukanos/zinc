service instance-server
startServerOn: port
  "start server in current vm."

  (self serverClass on: port)
    delegate: self delegate;
    debugMode: self debugMode;
    start.
  [ true ] whileTrue: [ (Delay forSeconds: 10) wait ]