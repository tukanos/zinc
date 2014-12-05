accessing
log
  log
    ifNil: [ 
      log := ZnGemServerLogSupport new
        enableContinuations: self enableContinuations;
        addListener: self logListener;
        breakpointExceptionSet: self class breakpointExceptionSet;
        yourself ].
  ^ log