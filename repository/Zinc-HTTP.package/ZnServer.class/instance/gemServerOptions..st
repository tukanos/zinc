options
gemServerOptions: aGemServerOptionsDictionary
  "apply options from aGemServerOptionsDictionary"

  aGemServerOptionsDictionary
    keysAndValuesDo: [ :key :value | self optionsAt: key put: value ]