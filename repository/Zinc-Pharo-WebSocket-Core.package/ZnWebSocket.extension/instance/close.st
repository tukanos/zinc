*zinc-pharo-websocket-core
close
	"Protocol: initialize-release"
	"Send a close frame and close the connection"

	self sendFrame: ZnWebSocketFrame close.
	stream close.
