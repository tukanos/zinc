"
I am ZnWebDAVClient, a simple client to talk to a WebDAV server.

Currently only a very small amount of a normal WebDAV client's functionality is implemented.

ZnWebDAVClient new
	host: 'localhost';
	port: 8000;
	username: 'johndoe' password: 'secret';
	list;
	at: 'foo.txt' put: (ZnEntity text: 'Pharo Smalltalk');
	at: 'foo.txt'.

I depend on Zinc HTTP Components and XML Support.
"
Class {
	#name : 'ZnWebDAVClient',
	#superclass : 'Object',
	#instVars : [
		'httpClient',
		'username',
		'password',
		'basePath'
	],
	#category : 'Zinc-WebDAV'
}

{ #category : 'accessing' }
ZnWebDAVClient >> at: name [
	^ self httpClient
		username: username password: password;
		path: name;
		get
]

{ #category : 'accessing' }
ZnWebDAVClient >> at: name put: entity [
	^ self httpClient
		username: username password: password;
		entity: entity;
		path: name;
		put;
		isSuccess 
]

{ #category : 'accessing' }
ZnWebDAVClient >> basePath [
	^ basePath ifNil: [ basePath := '/' ]
]

{ #category : 'initialize-release' }
ZnWebDAVClient >> basePath: anObject [
	basePath := anObject
]

{ #category : 'initialize-release' }
ZnWebDAVClient >> close [
	httpClient ifNotNil: [
		httpClient close ].
	username := password := nil
]

{ #category : 'initialize-release' }
ZnWebDAVClient >> host: hostName [
	self httpClient
		host: hostName
]

{ #category : 'private' }
ZnWebDAVClient >> httpClient [
	^ httpClient ifNil: [ 
		httpClient := ZnClient new http; yourself ]
]

{ #category : 'accessing' }
ZnWebDAVClient >> list [
	self httpClient
		username: username password: password;
		path: self basePath;
		headerAt: 'Depth' put: '1';
		method: #PROPFIND;
		entity: (ZnEntity xml: self propFindQuery);
		execute.
	^ self parsePropFindResponse: self httpClient contents
]

{ #category : 'private' }
ZnWebDAVClient >> parsePropFindResponse: string [
	^ ((XMLDOMParser parse: string) 
			allElementsNamed: 'response') 
				collect: [ :each |
					each contentStringAt: 'href' ]
]

{ #category : 'initialize-release' }
ZnWebDAVClient >> port: portNumber [
	self httpClient
		port: portNumber
]

{ #category : 'private' }
ZnWebDAVClient >> propFindQuery [
	| writer |
	(writer := XMLWriter new) 
		enablePrettyPrinting; 
		xml.
	writer tag
		name: 'a:propfind';
		xmlnsAt: 'a' put: 'DAV:';
		with: [
			writer tag: 'a:prop' with: [
				writer tag: 'a:resourcetype' ] ].
	^ writer contents 
]

{ #category : 'initialize-release' }
ZnWebDAVClient >> username: aUsername password: aPassword [
	username := aUsername.
	password := aPassword.
]
