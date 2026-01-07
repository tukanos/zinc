retrying
retryModification
   fieldIndex
      ifNotNil: [ object perform: retrySelector with: fieldIndex with: newValue ]
      ifNil: [ object perform: retrySelector with: newValue ].
   "self resumeUnchecked: newValue"
   UserDefinedError signal: 'Exception>>#resumeUnchecked: unimplemented in GemStone'