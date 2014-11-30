accessing
log
  log
    ifNil: [ 
      | logger |
      "default logger snaps off continuations for errors and logs errors to 
       Transcript (gem server log file)"
      logger := ZnTranscriptLogger new
        filter: #'error';
        yourself.
      log := ZnGemServerLogSupport new
        addListener: logger;
        yourself ].
  ^ log