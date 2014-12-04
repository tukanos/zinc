public
handleRequest: request
  | response |
  GRPlatform current doTransaction: [ response := super handleRequest: request ].
  ^ response