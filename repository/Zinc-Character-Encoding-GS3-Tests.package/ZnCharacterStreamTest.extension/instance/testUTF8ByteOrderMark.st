*zinc-character-encoding-gs3-tests
testUTF8ByteOrderMark
  "Protocol: testing"
  "The Unicode Byte Order Mark (BOM) should be skipped."

  | bom string bytes encoder decoded |
  encoder := ZnUTF8EncoderGS new.
  bom := #[239 187 191].
  string := 'élève en Français'.
  bytes := encoder encodeString: string.
  self assert: (encoder decodeBytes: bom , bytes) equals: string.
  self shouldnt: [ decoded := encoder decodeBytes: bom ] raise: ZnInvalidUTF8
