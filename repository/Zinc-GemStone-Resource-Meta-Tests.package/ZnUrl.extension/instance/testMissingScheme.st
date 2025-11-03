*zinc-gemstone-resource-meta-tests
testMissingScheme
	"Protocol: testing"
	| url |
	url := 'www.example.com' asZnUrl.
	self assert: url hasHost not.
	self assert: url pathSegments = (OrderedCollection with: 'www.example.com')
