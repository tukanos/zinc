testing
testGetGeoIP
  | result client |
  Transcript
    cr;
    show: 'testGetGeoIP debugging:'.
  result := (client := ZnClient new)
    systemPolicy;
    url: 'http://easy.t3-platform.net/rest/geo-ip';
    queryAt: 'address' put: '81.83.7.35';
    accept: ZnMimeType applicationJson;
    contentReader: [ :entity | 
          Transcript
            cr;
            show: 'ENTITY:' , entity contents asString.
          STON fromString: entity contents ];
    ifFail: [ :ex | ^ self fail ];
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