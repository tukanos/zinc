*zinc-gemstone-tests
setUp
  "Protocol: running"
  super setUp.
  GsSecureSocket disableCertificateVerificationOnClient
