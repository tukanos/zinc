logging
logEvent: eventBlock
  true
    ifTrue: [ ^ self ].
  System inTransaction
    ifTrue: [ 
      "piggyback existing transaction and rely on its commit"
      eventBlock value ]
    ifFalse: [ self gemServer doTransaction: eventBlock ]