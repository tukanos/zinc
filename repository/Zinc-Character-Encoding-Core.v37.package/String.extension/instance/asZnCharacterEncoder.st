*zinc-character-encoding-core
asZnCharacterEncoder
	"Return a ZnCharacterEncoderGS instance using the receiver as identifier"

	" 'UTF-8' asZnCharacterEncoder "

	^ ZnCharacterEncoderGS newForEncoding: self
