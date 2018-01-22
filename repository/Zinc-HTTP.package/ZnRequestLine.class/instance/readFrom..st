initialize-release
readFrom: stream
  | line lineStream |
  line := (ZnLineReader on: stream) nextLine.
  (line isEmpty and: [ stream isConnected not ])
    ifTrue: [ 
      "Browsers seem to have a habit of sending empty requests!"
      ConnectionClosed signal ].
  lineStream := line readStream.
  self method: (lineStream upTo: Character space).
  self uri: (lineStream upTo: Character space).
  self version: lineStream upToEnd