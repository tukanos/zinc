*zinc-gemstone-http-examples
actualFilenameFor: uri
	"Protocol: private"
	| subElements subDir entry |
	(uri isEmpty and: [ self prefix isEmpty ]) ifTrue: [ ^ self indexFileIn: self directory ].
	(self prefix isEmpty or: [ uri isEmpty not and: [ uri pathSegments beginsWith: self prefix ] ]) ifFalse: [ ^ nil ].
	subElements := (uri pathSegments allButFirst: self prefix size) reject: [ :each | each = $/ ].
	subDir := (subElements ifNotEmpty: [ subElements allButLast ] ifEmpty: [ #() ]) 
		inject: self directory 
		into: [ :parent :sub | | file |
			(file := parent / sub) exists
				ifTrue: [ file ]
				ifFalse: [ ^ nil ] ]. 
	subElements isEmpty
		ifTrue: [ entry := subDir ]
		ifFalse: [ | file |
			 (file := subDir / subElements last) exists
				ifTrue: [ entry := file ]
				ifFalse: [ ^ nil ] ].
	^ entry isDirectory
		ifTrue: [ self indexFileIn: entry ]
		ifFalse: [ entry fullName ]