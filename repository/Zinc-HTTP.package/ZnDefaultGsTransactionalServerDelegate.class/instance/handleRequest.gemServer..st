public
handleRequest: request gemServer: gemServer
  "compatability with ZnGemServerManagingMultiThreadedServer"

  "To add a GemStone transaction, subclass and use something like the following:

    gemServer gemServerTransaction: [ ^ self handleRequest: request ]
"

  gemServer gemServerTransaction: [ ^ self handleRequest: request ]