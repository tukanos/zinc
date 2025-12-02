notification
sessionEnd
  self subscriptions
    do: [ :objName |
      | obj |
      obj := GsSession currentSession symbolList objectNamed: objName.
      obj ~~ nil
        ifTrue: [ obj sessionEnd ] ]