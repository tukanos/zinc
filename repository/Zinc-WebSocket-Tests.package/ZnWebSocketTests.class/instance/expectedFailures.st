testing
expectedFailures
  (System stoneVersionReport at: 'gsVersion') asMetacelloVersionNumber
    <= '3.3.0' asMetacelloVersionNumber
    ifTrue: [ 
      "secure sockets not supported pre-3.3.0"
      ^ #(#'testEchoSecureWebSocketsDotOrg') ].
  ^ #()