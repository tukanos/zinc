*zinc-gemstone-http
gemServerOptions: aGemServerOptionsDictionary
  "Protocol: options"
  "apply options from aGemServerOptionsDictionary"

  aGemServerOptionsDictionary
    keysAndValuesDo: [ :key :value | self optionAt: key put: value ]