printing
printContentsOn: stream
	super printContentsOn: stream.

	stream << 'GemStone Server Error ';  print: exception description.
	stream << 'With following walkback: ';  print: message
