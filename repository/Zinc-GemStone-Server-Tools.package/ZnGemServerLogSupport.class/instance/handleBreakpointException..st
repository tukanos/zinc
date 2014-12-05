breakpoint handling
handleBreakpointException: exception
  "Handle breakpoint or halt, snap off continuation, then resume"

  Transcript
    cr;
    show: 'Creating continuation for: ' , exception description printString.
  self createContinuation: exception description.
  exception isResumable
    ifTrue: [ exception resume ]
    ifFalse: [ exception pass ]