accessing
value: webSocket
  "I stream status messages to a WebSocket client, once every second 
	until ConnectionClosed or no longer isConnected"
<<<<<<< HEAD

  [ 
  webSocket gemServer: self gemServer.
  webSocket logInfo: 'Started status streaming'.
  [ 
  webSocket sendMessage: self status.
  (Delay forSeconds: 1) wait.
  webSocket isConnected ]
    whileTrue ]
    on: ConnectionClosed
    do: [ :ignored | webSocket logDebug: 'Ignoring connection close' ].
  webSocket logInfo: 'Stopping status streaming'
=======
	
	[ 
		webSocket logGeneric: 'Started status streaming'.
		[ 
			webSocket sendMessage: self status.
			1 second asDelay wait.
			webSocket isConnected ] whileTrue ] 
		on: NetworkError  
		do: [ webSocket logGeneric: 'Ignoring network error' ].
	webSocket logGeneric: 'Stopping status streaming' 
>>>>>>> upstream/master
