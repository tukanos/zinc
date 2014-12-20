accessing
gemServerExceptionSet
  gemServerExceptionSet ifNil: [ gemServerExceptionSet := ExceptionSet new ].
  ^ gemServerExceptionSet