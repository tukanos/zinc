request handling
writeResponse: response on: streamTransientStackValue
  "Write response to stream and flush the stream"

  response writeOn: streamTransientStackValue value.
  streamTransientStackValue value flush.
  self logResponse: response