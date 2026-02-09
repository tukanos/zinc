*zinc-gemstone-tests
withServerDo: block
  "Protocol: private"
  | server |
  server := super withServerDo: block.
  "Alternative: ZnServer withOSAssignedPortDo: block"
  [   server start.
      self assert: server isRunning & server isListening.
      block cull: server
  ]
      ensure: [ server stop ]