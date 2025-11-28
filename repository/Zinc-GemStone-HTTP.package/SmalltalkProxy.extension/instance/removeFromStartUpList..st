*zinc-gemstone-http
removeFromStartUpList: anObject
  "Protocol: system messages"
  "Removing from 'startup' in GemStone"

  SystemLoginNotification unsubscribe: anObject name.
