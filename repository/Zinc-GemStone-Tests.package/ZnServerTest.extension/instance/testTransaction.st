*zinc-gemstone-tests
testTransaction
  "Protocol: testing"
  "UserGlobals at: #'<stone-node-name>_TestDictionary'"

  [ | globalName fieldName fieldValue |
  System abortTransaction.
  globalName := (System stoneVersionReport at: #nodeName), '_TestDictionary'.
  UserGlobals at: globalName asSymbol put: Dictionary new.
  System commitTransaction.
  fieldName := 'testField'.
  fieldValue := 1000 atRandom asString.
  self
    withServerDo: [ :server |
       | getResponse |
       server delegate: (ZnDispatcherDelegate new
         map: '/transaction' to: [ :request :response | response entity: (ZnStringEntity text: 'transaction server') ]).
       getResponse := ZnEasy
         get:
              (server localUrl
                addPathSegments: #('transaction');
                queryAt: #'globalName' put: globalName;
                queryAt: #'fieldName' put: fieldName;
                queryAt: #'fieldValue' put: fieldValue;
                yourself).
       self assert: getResponse contentType = ZnMimeType textPlain.
       self assert: getResponse statusLine code = 200.
       System abortTransaction.
       self assert: ((UserGlobals at: globalName asSymbol) at: fieldName) equals: fieldValue ] ]
    on: Error
    do: [ :ex | 
      Transcript
        cr;
        show: self class name asString , '>>testTransaction: ' , ex description;
        show: (GsProcess stackReportToLevel: 100) ]