*zinc-character-encoding-core
back
	"Protocol: accessing"
	self encoder backOnStream: stream.
	peeked ifNotNil: [
		self encoder backOnStream: stream.
		peeked := nil ].
	^ nil
