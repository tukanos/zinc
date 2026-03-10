private
  closeConnections
    self hasOpenConnections ifFalse: [ ^ self ].
    self logServerGeneric: 'Closing ' , self connections size printString , ' connections'.
      self lock critical: [
        self connections do: [ :each |
          self logConnectionClosed: each.
          [ each close ]
            on: Error
            do: [ :exception | 
              self logGsServerError: exception
                   message: (GsProcess stackReportToLevel: 100) ] ].
        self connections removeAll ].
    self logServerGeneric: 'Done closing connections'