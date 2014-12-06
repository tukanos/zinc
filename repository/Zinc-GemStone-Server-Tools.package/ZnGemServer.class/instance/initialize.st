initialization
initialize
  super initialize.
  self logErrorsOnly.
  self breakpointExceptionSet: self class breakpointExceptionSet.
  currentServer := TransientValue value: nil