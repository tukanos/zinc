*zinc-pharo-http
getGif: urlObject
	"Protocol: operations"
	"self getGif: 'http://zn.stfx.eu/zn/Hot-Air-Balloon.gif'."

	^ self
		getImageOfType: ZnMimeType imageGif
		fromUrl: urlObject
