breakpoint handling
handleBreakpointException: exception
  "Handle breakpoint or halt, snap off continuation, then resume"

  self createContinuation: exception description.
  exception isResumable
    ifTrue: [ exception resume ]
    ifFalse: [ exception pass ]