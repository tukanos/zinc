*zinc-pharo-http-examples
withServerDo: block
	"Protocol: private"
	ZnServer withOSAssignedPortDo: [ :server | | staticFileServerDelegate |
		(staticFileServerDelegate := ZnStaticFileServerDelegate new)
			prefixFromString: 'local-files';
			directory: ZnFileSystemUtils defaultDirectory;
			mimeTypeExpirations: ZnStaticFileServerDelegate defaultMimeTypeExpirations.
		server delegate: staticFileServerDelegate.
		block cull: server ]
