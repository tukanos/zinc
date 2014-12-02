accessing
value: webSocket
  "I stream status messages to a WebSocket client, once every second 
	until ConnectionClosed or no longer isConnected"

  [ 
  webSocket log info: 'Started status streaming'.
  [ 
  webSocket sendMessage: self status.
  (Delay forSeconds: 1) wait.
  webSocket isConnected ]
    whileTrue ]
    on: ConnectionClosed
    do: [ :ignored | webSocket log debug: 'Ignoring connection close' ].
  webSocket log info: 'Stopping status streaming'