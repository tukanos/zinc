*zinc-gemstone-http
nextId
	"Protocol: accessing"
	"This should be thread safe because SmallInteger
	arithmetic primitives cannot be interrupted"

	^ IdCounter := IdCounter + 1
