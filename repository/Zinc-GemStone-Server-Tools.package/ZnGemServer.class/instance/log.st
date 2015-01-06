accessing
log
  log
    ifNil: [ 
      log := ZnGemServerLogSupport new
        enableCreateContinuations: self enableCreateContinuations;
        addListener: self logListener;
        gemServerExceptionSet: self gemServerExceptionSet;
        yourself ].
  ^ log