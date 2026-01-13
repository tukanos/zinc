*zinc-pharo-tests
testGetGif
	"Protocol: testing"
	| url result |
	url := 'http://zn.stfx.eu/zn/Hot-Air-Balloon.gif'.
	result := ZnEasy getGif: url.
	self assert: result isForm
