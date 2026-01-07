I am ModificationForbidden exception.

Exception is raised when mutating a read-only object.

My instances have 4 fields to be able to reproduce the modification through retryModification method.

  object <Object> read-only object that the code attempted to mutate
  index <SmallInteger> index of the field in the object mutated, relevant for the corresponding selector
  value <Object> value that was attempted to be stored into the read-only object
  selector <Symbol> selector that can be used to reproduce the mutation (typically, #at:put:, #instVarAt:put:, etc.)

Note: Since Exception>>#resumeUnchecked: is unimplemented in GemStone. #retryModification only
      raises UserDefinedError with a message.