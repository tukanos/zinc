tests
testIsWideString

  self assert: '€₤' isWideString.
  self deny: 'test this string' isWideString.
  self assert: ' test ₤' isWideString.
  self deny: '' isWideString.
  self assert: 'éàôüÖẞ' isWideString.

  "Difference between Pharo and GemStone:
   - in Pharo the following string is a ByteString (8-bit or SingleByteString) thus it is not aWideString!
   - in GemStone the string is Unicode16 thus it is aWideString!"
  self assert: 'éàôüÖ' isWideString