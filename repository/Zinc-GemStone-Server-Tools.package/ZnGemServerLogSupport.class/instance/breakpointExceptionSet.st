accessing
breakpointExceptionSet
  breakpointExceptionSet ifNil: [ breakpointExceptionSet := ExceptionSet new ].
  ^ breakpointExceptionSet