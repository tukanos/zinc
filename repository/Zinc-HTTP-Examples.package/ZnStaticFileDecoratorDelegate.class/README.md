I'm a ZnStaticFileDecoratorDelegate. I can decorate a delegate to handle files from the filesystem. An Uri consists of a hierarchical path element. This path maps directly to a filesystem path. I'm supporting a usage scenario where I want to have a file delivered if the URI is e.g. '/index.html' and can be found on the filesystem and I want to have the request in dynamic handler if the request does not match a file on the filesystem.

Usage:

	delegate := ZnStaticFileDecoratorDelegate
		decorate: myRESTHandler
		servingFilesFrom: 'web/'

This will look on every request if there is a file in the local web/ directory if there is a matching file for the URI. If not myRESTHandler gets the request instead