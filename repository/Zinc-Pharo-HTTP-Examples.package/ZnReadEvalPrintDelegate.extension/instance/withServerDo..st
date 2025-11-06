*zinc-pharo-http-examples
withServerDo: block
	"Protocol: private"
	ZnServer withOSAssignedPortDo: block
