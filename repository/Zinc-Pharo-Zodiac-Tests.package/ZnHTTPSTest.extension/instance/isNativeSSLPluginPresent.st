*zinc-pharo-tests
isNativeSSLPluginPresent
	"Protocol: private"
	"Return whether the SSL VM plugin can be instanciated and intialized."
	
	^ [ ZdcPluginSSLSession new destroy. true ]
			on: ZdcPluginMissing
			do: [ false ]
