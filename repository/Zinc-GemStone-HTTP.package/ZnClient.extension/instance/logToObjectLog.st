*zinc-gemstone-http
logToObjectLog
	"Protocol: logging"
  "Setup logging to the Object Log"

  self log addListener: ZnObjectLogLogger new
