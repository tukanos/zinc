*zinc-character-encoding-gs3-tests
testSimpleUTF8WriteStream
  "Protocol: tests"
  | string bytes stream |
  string := 'élève en Français'.
  bytes := ZnUTF8EncoderGS new encodeString: string.
  stream := ZnCharacterWriteStream on: (AnsiWriteStream on: ByteArray new).
  stream nextPutAll: string.
  self assert: stream wrappedStream contents equals: bytes asByteArray	"in GemStone this an instance of Utf8"
