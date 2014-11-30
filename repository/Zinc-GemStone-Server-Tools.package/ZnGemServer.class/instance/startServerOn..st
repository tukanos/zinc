service instance-server
startServerOn: port
  "start server in current vm."

  | server logger |
  server := (self serverClass on: port)
    delegate: self delegate;
    debugMode: self debugMode;
    yourself.
  logger := ZnTranscriptLogger new
    filter: #'error';
    yourself.
  server log addListener: logger.
  server start.
  [ true ] whileTrue: [ (Delay forSeconds: 10) wait ]