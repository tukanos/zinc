instance creation
newForEncoding: string stringClass: ignored
  "Return a new character encoder object for an encoding described by string.
	Search for a subclass that handles it and delegate (subclassResponsibility)."

  ^ self newForEncoding: string asLowercase