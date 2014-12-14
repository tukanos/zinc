service instance-server
startBasicServerOn: port
  "start server in current vm."

  | server startMessage |
  server := (self serverClass on: port)
    delegate: self delegate;
    debugMode: self debugMode;
    log: self log;
    yourself.
  self authenticator ifNotNil: [ :auth | server authenticator: auth ].
  startMessage := server printString , ' (native thread: '
    , self activeProcessIsNative printString , ')'.
  Transcript
    cr;
    show: 'Starting server: ' , startMessage.
  server start.
  self serverInstance: server.
  self log debug: 'started: ' , startMessage