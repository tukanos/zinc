*zinc-gemstone-http-examples
initialize
  "Protocol: initialization"
  super initialize.
  data := Dictionary new.
  access := CriticalSection new