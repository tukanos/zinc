*zinc-pharo-http
announcer
	"Protocol: accessing"
	^ LogEventAnnouncer ifNil: [ LogEventAnnouncer := Announcer new ]
