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
  gemServer startGems.
  (Delay forSeconds: 3) wait.
  client := self
    createClientFor:
      (ZnUrl new
        scheme: #'http';
        host: 'localhost';
        port: port;
        yourself)