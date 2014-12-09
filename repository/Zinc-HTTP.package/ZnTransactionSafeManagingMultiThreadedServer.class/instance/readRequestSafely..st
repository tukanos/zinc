request handling
readRequestSafely: streamTransientStackValue
  "Read request from stream, returning nil when the connection is closed or times out"

  ^ [ 
  [ self readRequest: streamTransientStackValue ]
    on: self readRequestBadExceptionSet
    do: [ :exception | 
      self log
        error: exception description
        message: (GsProcess stackReportToLevel: 100).
      self writeResponseBad: exception on: streamTransientStackValue value.
      nil ] ]
    on: self readRequestTerminationExceptionSet
    do: [ :exception | 
      self log
        error: exception description
        message: (GsProcess stackReportToLevel: 100).
      nil ]