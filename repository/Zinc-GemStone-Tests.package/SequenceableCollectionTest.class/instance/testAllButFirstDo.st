tests
testAllButFirstDo

  | stream |
  stream := (Array streamContents: [ :stream | #(1 2 3) allButFirstDo: [ :each | stream nextPut: (each + 10) ] ]).
  self assert: stream equals: #(12 13)