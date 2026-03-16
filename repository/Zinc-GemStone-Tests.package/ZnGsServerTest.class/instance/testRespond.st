testing
testRespond
  self withServerRespond: [ :request |
      ZnRespond signalWith: (ZnResponse ok: (ZnEntity text: 'RESPONDED')).
      ZnResponse notFound: request uri ]
    do: [ :server | | client |
      client := ZnClient new.
      client get: server localUrl.
      self assert: client isSuccess.
      self assert: client response contentType equals: ZnMimeType textPlain.
      self assert: client contents equals: 'RESPONDED'.
      client close ]