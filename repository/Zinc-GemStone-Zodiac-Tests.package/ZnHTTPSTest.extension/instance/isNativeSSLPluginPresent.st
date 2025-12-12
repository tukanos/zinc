*zinc-gemstone-zodiac-tests
isNativeSSLPluginPresent
  "Protocol: private"
  "Return whether the SSL VM plugin can be instanciated and intialized."

  ^ [ ZdcGemStoneSSLSession new destroy. true ] 
  	on: ZdcPluginMissing
	do: [ false ]
