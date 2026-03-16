private
closeConnections
  self hasOpenConnections ifFalse: [ ^ self ].
  self lock critical: [
    self connections do: [ :each |
      self logConnectionClosed: each.
      [ each close ]
        on: Error
        do: [ :exception |
          self logServerGeneric: exception description.
          self logServerGeneric: (GsProcess stackReportToLevel: 100) ] ].
    self connections removeAll ]