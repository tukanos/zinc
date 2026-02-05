*zinc-gemstone-websocket-core
onStream: socketStream
	"Protocol: initialize-release"
  "Initialize the receiver on socketStream"

  stream := TransientStackValue value: socketStream
