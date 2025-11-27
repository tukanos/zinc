*zinc-character-encoding-core
errorOverlong: codePoint from: stream
	"Protocol: error handling"
	^ self error: 'Overlong utf-8 encoding (non-shortest form)'
