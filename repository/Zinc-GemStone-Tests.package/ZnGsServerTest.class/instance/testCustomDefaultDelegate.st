testing
testCustomDefaultDelegate
	| customDelegate |
	customDelegate := ZnDefaultServerDelegate empty.
	customDelegate
		map: 'ok' to: [ :request | ZnResponse ok: (ZnEntity text: 'OK') ];
		map: '/' to: 'ok';
		map: 'OK' to: [ :request | ZnResponse redirect: '/ok' ].
	self withServerDelegate:  customDelegate
		do: [ :server |
			|  client |
			client := ZnClient new url: server localUrl.
			self assert: client get equals: 'OK'.
			client addPath: 'OK'.
			self assert: client get equals: 'OK'.
			client close ]