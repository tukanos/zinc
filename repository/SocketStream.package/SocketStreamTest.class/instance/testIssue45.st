as yet unclassified
testIssue45
  "https://github.com/GsDevKit/zinc/issues/45"

  "should be fixed in 3.3.1 and 3.2.16"

  | in out result p1 p2 sema stoneVersion |
  stoneVersion := (System stoneVersionAt: 'gsVersion') asMetacelloVersionNumber.
  (stoneVersion >= '3.3.1' asMetacelloVersionNumber
    or: [ 
      stoneVersion < '3.3.0' asMetacelloVersionNumber
        and: [ stoneVersion > '3.2.15' asMetacelloVersionNumber ] ])
    ifTrue: [ 
      in := ByteArray new: 20000000 withAll: 7.
      sema := Semaphore new.
      p1 := [ clientStream nextPutAll: in ] fork.
      p2 := [ 
      out := ByteArray new: in size.
      result := serverStream next: out size into: out.
      sema signal ]
        fork.
      sema wait.
      self assert: result = in ]