*zinc-character-encoding-core
on: readStream do: block
	"Protocol: convenience"
	"Execute block with as argument a ZnBufferedReadStream on readStream.
	Return the value of block."

	^ block value: (self on: readStream)
