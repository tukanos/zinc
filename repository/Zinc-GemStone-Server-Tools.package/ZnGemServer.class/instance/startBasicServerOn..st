service instance-server
startBasicServerOn: port
  "start server in current vm."

  | server |
  server := (self serverClass on: port)
    delegate: self delegate;
    debugMode: self debugMode;
    log: self log;
    yourself.
  server start.
  self currentServer: server.
  Transcript
    cr;
    show: self currentServer