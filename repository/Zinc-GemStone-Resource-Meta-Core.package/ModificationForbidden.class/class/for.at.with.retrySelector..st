instance creation
for: anObject at: fieldIndex with: newValue retrySelector: selector
	^self new
		object: anObject;
		fieldIndex: fieldIndex;
		newValue: newValue;
		retrySelector: selector