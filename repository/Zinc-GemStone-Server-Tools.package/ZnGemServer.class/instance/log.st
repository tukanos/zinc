accessing
log
  log
    ifNil: [ 
      log := ZnGemServerLogSupport new
        enableContinuations: self enableContinuations;
        addListener: self logListener;
        gemServerExceptionSet: self gemServerExceptionSet;
        yourself ].
  ^ log