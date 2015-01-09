Running
tearDown
  "GemServer removeGemServerNamed: 'ZnServerBasedTestServer'"

  super tearDown.
  GemServer removeGemServerNamed: self gemServerName