*zinc-pharo-http
welcome: request
	"Protocol: responses"
	"Answer a nice HTML welcome page"

	| page entity |
	page := self generateWelcomePage.
	entity := ZnEntity html: page.
	^ ZnResponse ok: entity