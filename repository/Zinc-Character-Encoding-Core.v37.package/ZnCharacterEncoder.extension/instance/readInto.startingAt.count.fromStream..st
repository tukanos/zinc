*zinc-character-encoding-core
readInto: string startingAt: offset count: requestedCount fromStream: stream
  "Protocol: convenience"
	"Read requestedCount characters into string starting at offset,
	returning the number read, there could be less available when stream is atEnd"

	offset to: offset + requestedCount - 1 do: [ :index |
		stream atEnd ifTrue: [ ^ index - offset ].
		string at: index put: (self nextFromStream: stream) ].
	^ requestedCount
