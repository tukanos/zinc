service instance-server
startBasicServerOn: port
  "start server in current vm."

  | server |
  server := (self serverClass on: port)
    delegate: self delegate;
    debugMode: self debugMode;
    log: self log;
    yourself.
  Transcript
    cr;
    show:
        'Starting server: ' , server printString , ' (native thread: '
            , GsProcess usingNativeCode printString , ')'.
  server start.
  self currentServer: server.
  self log
    debug: [ 
      'started: ' , server printString , ' (native thread: '
        , GsProcess usingNativeCode printString , ')' ]