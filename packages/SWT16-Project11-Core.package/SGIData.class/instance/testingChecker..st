file-operations
testingChecker: anObject 
	|object|
	object:= self excludeChecker: anObject.
	object:= self includeChecker: object.
	
	(object testing size == 0)
	ifTrue: [object testing: nil ].
		
	^ object