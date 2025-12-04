*zinc-pharo-http
executeHandlingErrors
	"Protocol: private - protocol"
	^ [ self executeWithRetriesRemaining: self numberOfRetries ]
			on: Error
			do: self ifFailBlock
