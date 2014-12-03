accessing
log
  log
    ifNil: [ 
      log := ZnGemServerLogSupport new
        enableContinuations: true;
        addListener: self logListener;
        yourself ].
  ^ log