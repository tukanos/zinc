*zinc-gemstone-http
systemVersion
	"Protocol: accessing"
	^ (System stoneVersionReport at: #nodeName), '/', (System stoneVersionReport at: 'gsVersion')