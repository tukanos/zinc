*zinc-pharo-http
cleanupConnection
	"Protocol: private"
	(self isOneShot
		or: [
			self streaming not
				and: [
					(request notNil and: [ request wantsConnectionClose ])
						or: [ response notNil and: [ response wantsConnectionClose ] ] ] ])
		ifTrue: [
			self close ]