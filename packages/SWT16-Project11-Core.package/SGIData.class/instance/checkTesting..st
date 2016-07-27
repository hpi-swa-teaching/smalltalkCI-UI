checking
checkTesting: anObject 
	| object |
	object := self checkExclude: anObject.
	object := self checkInclude: object.
	(object testing size == 0) ifTrue: [ object testing: nil ].
	^ object