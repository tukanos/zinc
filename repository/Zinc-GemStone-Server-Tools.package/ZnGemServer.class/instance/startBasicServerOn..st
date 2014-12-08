service instance-server
startBasicServerOn: port
  "start server in current vm."

  | server startMessage |
  server := (self serverClass on: port)
    delegate: self delegate;
    debugMode: self debugMode;
    log: self log;
    yourself.
  startMessage := server printString , ' (native thread: '
    , GsProcess _current _nativeStack printString , ')'.
  Transcript
    cr;
    show: 'Starting server: ' , startMessage.
  server start.
  self currentServer: server.
  self log debug: 'started: ' , startMessage