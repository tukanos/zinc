*zinc-pharo-character-encoding-core
convert: byteString
	"Protocol: convenience"
	"Convert byteString to a wideString, signalling a resumable error"

	| wideString |
	wideString := WideString from: byteString.
	self new
		byteString: byteString;
		wideString: wideString;
		signal.
	^ wideString
