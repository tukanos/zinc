accessing
forPlatformLineEnding
	"Decides only between Windows and linux/unix"
	lineEnding := (Smalltalk os platformName asLowercase beginsWith: 'win')
					 ifTrue: [ String crlf ]
					 ifFalse: [ String lf ]