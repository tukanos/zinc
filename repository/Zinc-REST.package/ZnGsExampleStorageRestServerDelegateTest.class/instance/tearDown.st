running
tearDown
  super tearDown.
  self stopGems.
  gemServer unregister