checking
checkTesting: anObject 
	| object |
	object := anObject.
	object := self check: anObject withKey: self class excludeDictionaryString.
	object := self check: anObject withKey: self class includeDictionaryString.
	(object testing size == 0) ifTrue: [ object testing: nil ].
	^ object