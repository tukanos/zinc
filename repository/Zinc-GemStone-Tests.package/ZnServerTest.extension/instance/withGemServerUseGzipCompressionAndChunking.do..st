*zinc-gemstone-tests
withGemServerUseGzipCompressionAndChunking: useGzipCompressionAndChunking do: block
  "Protocol: private"
  | gemServer |
  gemServer := super withGemServerDo: block.
  gemServer useGzipCompressionAndChunking: useGzipCompressionAndChunking.
  self runGemServer: gemServer during: block
