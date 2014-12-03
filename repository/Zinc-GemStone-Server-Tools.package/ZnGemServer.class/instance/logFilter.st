accessing
logFilter
  logFilter ifNil: [ logFilter := #'error' ].
  ^ logFilter