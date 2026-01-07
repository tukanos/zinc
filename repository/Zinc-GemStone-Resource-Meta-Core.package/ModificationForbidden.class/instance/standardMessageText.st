printing
standardMessageText
   ^ fieldIndex ifNil: [ self nonIndexedMessageText ] ifNotNil: [ self indexedMessageText ]