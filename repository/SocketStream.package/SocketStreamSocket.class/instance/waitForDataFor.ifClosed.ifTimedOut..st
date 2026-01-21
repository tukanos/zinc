as yet unclassified
waitForDataFor: timeout ifClosed: closedBlock ifTimedOut: timedOutBlock
  "Wait for the given nr of seconds for data to arrive.
  If it does not, execute <timedOutBlock>. If the connection
  is closed before any data arrives, execute <closedBlock>."

  | startTime msecsDelta msecsElapsed |
  startTime := Time millisecondClockValue.
  msecsDelta := (timeout * 1000) truncated.
  [ self dataAvailable ] whileFalse: [
    self isConnected ifFalse: [ ^ closedBlock value ].
    (msecsElapsed := Time millisecondsSince: startTime) < msecsDelta
      ifFalse: [ ^ timedOutBlock value ].
    self waitForReadDataUpToMs: msecsDelta - msecsElapsed ]