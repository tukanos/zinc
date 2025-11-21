*zinc-character-encoding-core
readInto: string startingAt: offset count: requestedCount fromStream: stream
	"Protocol: convenience"
	"Read requestedCount characters into string starting at offset,
	returning the number read, there could be less available when stream is atEnd"

	| byteBuffer readCount |
	byteBuffer := ByteArray new: requestedCount.
	readCount := stream readInto: byteBuffer startingAt: 1 count: requestedCount.
	string replaceFrom: offset to: offset + readCount - 1 with: byteBuffer asString startingAt: 1.
	^ readCount