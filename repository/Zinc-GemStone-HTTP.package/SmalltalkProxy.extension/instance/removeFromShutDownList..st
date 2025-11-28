*zinc-gemstone-http
removeFromShutDownList: anObject
  "Removing from 'shutdown'"

  SystemLogoutNotification unsubscribe: anObject name.
