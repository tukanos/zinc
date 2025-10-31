*zinc-gemstone-tests
testByteWritingToTranscript
  "Protocol: testing"
	| writeStream |
	writeStream := ZnBivalentWriteStream on: Transcript.
	writeStream nextPut: 97; nextPutAll: #(98 99) asByteArray
