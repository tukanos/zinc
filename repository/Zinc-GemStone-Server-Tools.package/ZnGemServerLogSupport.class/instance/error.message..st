accessing
error: errorDescription message: message
  self createContinuation: errorDescription.
  super error: errorDescription message: message