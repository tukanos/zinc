*zinc-gemstone-http
setServerSocketOptions: socket
  "Protocol: private"
	socket
		setOption: 'NODELAY' value: true;
		setOption: 'SNDBUF' value: self class socketBufferSize;
		setOption: 'RCVBUF' value: self class socketBufferSize
