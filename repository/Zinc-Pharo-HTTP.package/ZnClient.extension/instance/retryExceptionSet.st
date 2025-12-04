*zinc-pharo-http
retryExceptionSet
	"Protocol: private"
	^ NetworkError, ZnParseError, ZnCharacterEncodingError, ZnUnknownScheme, ZnPortNotANumber
