testing
testError
  Transcript
    cr;
    show: 'testError: ' , self class name printString.
  self
    withServerDo: [ :server | 
      | url response |
      self deny: server debugMode.
      url := server localUrl
        addPathSegment: #'error';
        queryAt: #'message' put: 'Test Error';
        yourself.
      response := ZnEasy get: url.
      Transcript
        cr;
        show:
            'testError: ' , response isSuccess printString , ' ' , response code printString
                , ' ' , response contentType printString , ' '
                , ZnMimeType textPlain printString , ' '
                , (response contentType = ZnMimeType textPlain) printString
                , ' '
                ,
                  (response entity contents includesSubstring: 'Test Error') printString.
      self deny: response isSuccess.
      self assert: response code equals: 500.
      self assert: response contentType equals: ZnMimeType textPlain.
      self assert: (response entity contents includesSubstring: 'Test Error') ]