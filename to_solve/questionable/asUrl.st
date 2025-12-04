*zinc-gemstone-resource-meta-core
asUrl
  "Protocol: converting"
	"convert to a Url"
	"'http://www.cc.gatech.edu/' asUrl"
	"msw://chaos.resnet.gatech.edu:9000/' asUrl"

	^ Url absoluteFromText: self printString
