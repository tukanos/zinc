*zinc-character-encoding-core
next: count putAll: string startingAt: offset toStream: stream
  "Protocol: convenience"
	"Write count characters from string starting at offset to stream."

	offset to: offset + count - 1 do: [ :index |
		self nextPut: (string at: index) toStream: stream ]
