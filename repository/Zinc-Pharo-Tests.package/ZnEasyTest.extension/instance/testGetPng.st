*zinc-pharo-tests
testGetPng
	"Protocol: testing"
	| url result |
	url := 'http://pharo.org/web/files/pharo.png'.
	result := ZnEasy getPng: url.
	self assert: result isForm
