service instance-server
startServerOn: port
  "start server in current vm."

  self startBasicServerOn: port.
  [ true ] whileTrue: [ (Delay forSeconds: 10) wait ]