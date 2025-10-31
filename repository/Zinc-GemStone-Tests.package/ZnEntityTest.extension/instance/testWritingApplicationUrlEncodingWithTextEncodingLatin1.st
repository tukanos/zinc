*zinc-gemstone-tests
testWritingApplicationUrlEncodingWithTextEncodingLatin1
  "Protocol: testing"
	| entity bytes |
	entity := ZnApplicationFormUrlEncodedEntity new.
	entity contentType charSet: 'iso-8859-1'.
	entity at: 'foo' put: (Character value: 246) asString.
	string := String streamContents: [ :stream | entity writeOn: stream ].
	self assert: string = 'foo=%F6'.
	self assert: entity contentLength = 7
