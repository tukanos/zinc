Class {
	#name : 'DynamicVariable',
	#superclass : 'Object',
	#category : 'Zinc-GemStone'
}

{ #category : 'accessing' }
DynamicVariable class >> default [
	"Answer the default value for the variable. The default for the default value is nil."

	^ nil
]

{ #category : 'accessing' }
DynamicVariable class >> value [
	"Answer the current value for this variable in the current context."

	^ Processor activeProcess environmentAt: self ifAbsent: [ self default ]
]

{ #category : 'accessing' }
DynamicVariable class >> value: anObject during: aBlock [
	| p oldValue |
	p := Processor activeProcess.
	oldValue := p environmentAt: self ifAbsent: [ self default ].
	[ 
	p environmentAt: self put: anObject.
	aBlock value ]
		ensure: [ p environmentAt: self put: oldValue ]
]
