*zinc-pharo-http
isUsingLimitedAcceptStrategy
	"Protocol: testing"
	^ (ZnCurrentOptions at: #acceptStrategy) = #limited