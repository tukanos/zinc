accessing
enableContinuations
  "if true, snap off continuation for log errors"

  enableContinuations ifNil: [ enableContinuations := true ].
  ^ enableContinuations