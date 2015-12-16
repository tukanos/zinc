testing
testIfModifiedSinceNotModified
  | client request response |
  (client := ZnClient new) host: 'stfx.eu'.
  [ 
  response := client
    url: '/small.html';
    setIfModifiedSince: (Date year: 2011 month: 1 day: 1);
    get;
    response.
  self assert: response isNotModified.
  self assert: response hasEntity not ]
    ensure: [ client close ]