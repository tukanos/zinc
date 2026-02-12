printing
printContentsOn: stream
	super printContentsOn: stream.

	stream << 'WebSocket Debug Log Event ';  print: subject