private
startGems: gemServer
  "ZnWebSocketTests staticRemoteServer: true.
   ZnWebSocketTests staticRemoteServer: false.

  ZnWebSocketTests interactiveRemoteServer: true.
  ZnWebSocketTests interactiveRemoteServer: false."

  "mount @/sys/stone/dirs/GsApplicationTools/tode /home gemserver"

  "abort; /home/gemserver/example --start=Z<gem-server-name>"

  "limit autoCommit false; eval `System transactionMode: #manualBegin` /home/gemserver/example --start=<gem-server-name>"

  self staticRemoteServer
    ifFalse: [ 
      gemServer restartGems.
      (Delay forSeconds: 3) wait.
      ^ self ].
  self
    notify:
      'evaluate on server: abort; /home/gemserver/example --start=' , gemServer name