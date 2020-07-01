testing
testGetGeoIP
  | result client |
  result := (client := ZnClient new)
    systemPolicy;
    url: 'http://easy.t3-platform.net/rest/geo-ip';
    queryAt: 'address' put: '81.83.7.35';
    accept: ZnMimeType applicationJson;
    contentReader: [ :entity | STON fromString: entity contents ];
    ifFail: [ :ex | 
          Transcript
            cr;
            show:
                'testGetGeoIP ZdcSecureSocketStream: '
                    ,
                      (Smalltalk globals at: #'ZdcSecureSocketStream' ifAbsent: [ 'not found' ])
                        printString.
          Transcript
            cr;
            show: 'testGetGeoIP FAIL: ' , ex description.
          ^ self fail ];
    get.
  result
    keysAndValuesDo: [ :key :value | 
      Transcript
        cr;
        tab;
        show: key printString , ' -> ' , value printString ].
  self assert: result isDictionary.
  self assert: (result at: 'country') = 'BE'.
  client close