testing
testEchoSecureWebSocketsDotOrg
  | webSocket message |
  (Smalltalk at: #'GsSecureSocket') disableCertificateVerificationOnClient.
  webSocket := self webSocketClass to: 'wss://echo.websocket.org'.
  message := 'Greetings from Gemstone Smalltalk @ ' , TimeStamp now printString.
  webSocket sendMessage: message.
  self assert: webSocket readMessage equals: message.
  webSocket close