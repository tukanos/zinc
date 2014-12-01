accessing
log
  log
    ifNil: [ 
      | logger |
      self debugMode
        ifTrue: [ 
          "In debugMode, snap off continuations for errors, but use the ZnObjectLogLogger"
          logger := ZnObjectLogLogger new ]
        ifFalse: [ 
          "default logger snaps off continuations for errors and logs errors to 
       Transcript (gem server log file)"
          logger := ZnTranscriptLogger new
            filter: #'error';
            yourself ].
      log := ZnGemServerLogSupport new
        addListener: logger;
        yourself ].
  ^ log