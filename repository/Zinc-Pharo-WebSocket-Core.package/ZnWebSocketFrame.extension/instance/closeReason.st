*zinc-pharo-websocket-core
closeReason
	"Protocol: accessing"
	self assert: self isClose.
	self assert: self isEmpty not.
	^ ZnUTF8Encoder new decodeBytes: (body allButFirst: 2)
	
