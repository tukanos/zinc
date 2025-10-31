*zinc-gemstone-http
md5Hash: aString
  "Protocol: accessing"
  | hex hash |
  hex := aString md5sum hex.
  hash := hex asLowercase.
  (hash beginsWith: '16r')
    ifTrue: [ hash := hash allButFirst: 3 ].
  hash := hash padded: #'left' to: 32 with: $0.
  ^ hash
