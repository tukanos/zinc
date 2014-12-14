service instance-server
startBasicServerOn: port
  "start server in current vm."

  | server startMessage |
  server := (self serverClass on: port)
    debugMode: self debugMode;
    log: self log;
    _options: options;
    yourself.
  startMessage := server printString , ' (native thread: '
    , self activeProcessIsNative printString , ')'.
  Transcript
    cr;
    show: 'Starting server: ' , startMessage.
  server start.
  self serverInstance: server.
  self log debug: 'started: ' , startMessage