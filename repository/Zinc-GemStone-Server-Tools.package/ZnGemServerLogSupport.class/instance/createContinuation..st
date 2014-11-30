private
createContinuation: errorDescription
  self enabled
    ifTrue: [ 
      GRPlatform current
        doTransaction: [ DebuggerLogEntry createContinuationLabeled: errorDescription ] ]