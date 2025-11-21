*zinc-gemstone-character-encoding-core
newForEncoding: string stringClass: stringClass
    "Protocol: instance creation"
    "Return a new character encoder object for an encoding described by string.
    Search for a subclass that handles it and delegate (subclassResponsibility)."

    ^ self new stringClass: stringClass