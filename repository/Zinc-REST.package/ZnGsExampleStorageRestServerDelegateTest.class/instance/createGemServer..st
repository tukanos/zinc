private
createGemServer: port
  ^ (self gemServerClass register: 'ZnGsExampleStorageRestServer' on: {port})
    logToTranscript;
    logToObjectLog;
    logEverything;
    delegate: ZnExampleStorageRestServerDelegate new;
    yourself