printing
printContentsOn: stream
	super printContentsOn: stream.

	stream << 'WebSocket Info Log Event ';  print: subject