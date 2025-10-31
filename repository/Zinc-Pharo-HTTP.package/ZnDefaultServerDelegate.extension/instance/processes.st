*zinc-pharo-http
processes
	"Protocol: private"
	^ (Process allSubInstances
		reject: [ :each | each isTerminated ])
		sorted: #priority descending , #name ascending 
