service instance-server
startBasicServerOn: port
  "start server in current vm."

  | server startMessage |
  server := (self serverClass on: port)
    debugMode: self debugMode;
    log: self log;
    gemServerOptions: self options;
    gemServerLocalOptions: self localOptions;
    yourself.
    
  startMessage := server printString , ' (native thread: '
    , self activeProcessIsNative printString , ')'.
  server logServerGeneric: 'Starting server: ', startMessage.
  
  server start.
  self serverInstance: server.