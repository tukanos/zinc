*zinc-gemstone-http
executeWithRetriesRemaining: retryCount
	"Protocol: private protocol"
  ^ [ self executeWithRedirectsRemaining: self maxNumberOfRedirects ]
    on:
      NetworkError , ZnParseError , ZnCharacterEncodingError , ZnUnknownScheme
        , ZnPortNotANumber , SpSocketError
    do: [ :exception | 
      retryCount > 0
        ifTrue: [ 
          self
            handleRetry: exception;
            executeWithRetriesRemaining: retryCount - 1 ]
        ifFalse: [ exception pass ] ]
