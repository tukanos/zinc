*zinc-gemstone-http
modificationTimeFor: path
	"Protocol: queries"
	"GemStone gives precision greater than seconds; it needs to be rounded"
	| roundedToSeconds |
	roundedToSeconds := path asFileReference entry modificationTime asSeconds rounded.
	^ DateAndTime secondsLocal: roundedToSeconds offset: Duration zero
