*zinc-gemstone-http
at: aGlobalName ifPresent: aPresentBlock ifAbsent: anAbsentBlock
	"Prococol: accessing"
  | glob |
  glob := GsSession currentSession symbolList objectNamed: aGlobalName.
  glob ~~ nil
    ifTrue: [
      aGlobalName isNil
        ifTrue: [ ^ nil ].
      ^ aPresentBlock value: glob ]
    ifFalse: [ aGlobalName isNil
      ifTrue: [ ^ anAbsentBlock value ].
      ^ glob == nil
        ifTrue: [ anAbsentBlock value ]
        ifFalse: [ glob ] ]
