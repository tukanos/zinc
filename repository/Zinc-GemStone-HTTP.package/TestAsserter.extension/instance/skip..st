*zinc-gemstone-http
skip: aString
	"Skipping a test.  Must specify a reason why thest test is skipped!"
	self class logSkipping: 'Test is being skipped! A message from skipped test: ', aString
