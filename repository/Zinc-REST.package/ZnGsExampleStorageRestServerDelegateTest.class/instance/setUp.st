running
setUp
  | port |
  super setUp.
  ZnServer defaultServerClass initialize.
  port := 1700 + 10 atRandom.
  GemServerRegistry removeGemServerNamed: 'ZnGsExampleStorageRestServer'.
  gemServer := (ZnGemServer register: 'ZnGsExampleStorageRestServer' on: {port})
    logToTranscript;
    logToObjectLog;
    logEverything;
    delegate: ZnExampleStorageRestServerDelegate new;
    yourself.
  self startGems.
  client := self
    createClientFor:
      (ZnUrl new
        scheme: #'http';
        host: 'localhost';
        port: port;
        yourself)