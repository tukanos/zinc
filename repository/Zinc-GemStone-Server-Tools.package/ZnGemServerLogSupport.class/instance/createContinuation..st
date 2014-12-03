private
createContinuation: errorDescription
  (self enabled and: [ self enableContinuations ])
    ifTrue: [ 
      GRPlatform current
        doTransaction: [ DebuggerLogEntry createContinuationLabeled: errorDescription ] ]