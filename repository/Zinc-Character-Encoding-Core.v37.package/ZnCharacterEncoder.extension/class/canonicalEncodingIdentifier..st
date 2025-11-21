*zinc-character-encoding-core
canonicalEncodingIdentifier: string
  "Protocol: accessing"
	^ (string select: [ :each | each isAlphaNumeric ]) asLowercase
