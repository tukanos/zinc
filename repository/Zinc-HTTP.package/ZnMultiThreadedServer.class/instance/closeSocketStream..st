private
closeSocketStream: socketStream
	[ socketStream close ]
		on: Exception
		do: [ :exception | exception printString, ' occured during close socket stream!' ]

