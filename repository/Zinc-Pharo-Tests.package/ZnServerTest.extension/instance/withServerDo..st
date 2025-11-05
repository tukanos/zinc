*zinc-pharo-tests
withServerDo: block
	"Protocol: private"
	ZnServer withOSAssignedPortDo: block