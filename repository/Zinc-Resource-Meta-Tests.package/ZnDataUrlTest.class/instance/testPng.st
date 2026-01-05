tests
testPng
	| logoPngBytes dataUrl representation |
	logoPngBytes := self class pharoLogoContents base64Decoded.
	dataUrl := ZnDataUrl bytes: logoPngBytes type: ZnMimeType imagePng.
	representation := dataUrl printString.
	dataUrl := ZnDataUrl fromString: representation.
	self assert: dataUrl data equals: logoPngBytes 