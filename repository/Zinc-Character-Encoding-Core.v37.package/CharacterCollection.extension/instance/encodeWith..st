*zinc-character-encoding-core
encodeWith: encoding
	"Produce a ByteArray that encodes the receiver, using a specified encoding.
	Encoding is either a ZnCharacterEncoderGS instance or an identifier for one."

	" 'Les élèves français' encodeWith: #utf8 "

	^ encoding asZnCharacterEncoder encodeString: self
