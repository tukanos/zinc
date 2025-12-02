*zinc-gemstone-http
addToShutDownList: anObject
  "Protocol: system messages"
  "Remove from 'shutdown'"

  SystemLogoutNotification subscribe: anObject name.
