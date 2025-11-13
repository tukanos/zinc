*zinc-pharo-websocket-core
isConnected
	"Protocol: testing"
	"Return true when I am connected, 
	i.e. not closed and still connected at the socket level"

	^ stream notNil and: [ stream isConnected ]
