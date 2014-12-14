options
gemServerOptions: aGemServerOptionsDictionary
  "apply options from aGemServerOptionsDictionary"

  aGemServerOptionsDictionary
    keysAndValuesDo: [ :key :value | options at: key put: value ]