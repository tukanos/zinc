request handling
executeRequestResponseLoopOn: streamTransientStackValue
  "Execute the HTTP request / response loop on stream one cycle at a time
  until the other end indicates it wants to stop or times out"

  self withDynamicVariablesDo: [
    [ self executeOneRequestResponseOn: streamTransientStackValue ] whileFalse ]
      on: self gemServerExceptionSet
      do: [ :exception | self logServerHandlerError: exception resumeIfResumable: self debugMode not ]