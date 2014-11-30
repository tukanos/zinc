instance creation
error: errorDescription message: message
  GRPlatform current
    doTransaction: [ DebuggerLogEntry createContinuationLabeled: errorDescription ].
  ^ (self category: #'error' message: message)
    label: errorDescription;
    yourself