*zinc-gemstone-websocket-core
text: string
	"Protocol: accessing"
	self body: (ZnUTF8Encoder new encodeString: string)
