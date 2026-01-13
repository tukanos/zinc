*zinc-pharo-tests
testGetJpeg
	"Protocol: testing"
	| url result |
	url := 'http://stfx.eu/sun-fire-x2100.jpg'.
	result := ZnEasy getJpeg: url.
	self assert: result isForm
