*zinc-gemstone-tests
withServerUseGzipCompressionAndChunking: useGzipCompressionAndChunking do: block
  "Protocol: private"
  | server |
  server := super withServerDo: block.
  server useGzipCompressionAndChunking: useGzipCompressionAndChunking.
  [ 
  server start.
  self assert: server isRunning & server isListening.
  block cull: server ]
    ensure: [ server stop ]
