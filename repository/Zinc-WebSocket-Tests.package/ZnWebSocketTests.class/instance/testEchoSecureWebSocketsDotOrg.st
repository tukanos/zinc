testing
testEchoSecureWebSocketsDotOrg
  | webSocket message |
  webSocket := self webSocketClass to: 'wss://echo.websocket.org'.
  message := 'Greetings from Gemstone Smalltalk @ ' , TimeStamp now printString.
  webSocket sendMessage: message.
  self assert: webSocket readMessage equals: message.
  webSocket close