checking
checkTesting: anObject 
	| object |
	self refactoringNote: 'Habe Zeile 4 wegen der Einheitlichkeit der Zeilen 5 und 6 eingefügt'.
	object := anObject.
	object := self checkExclude: object.
	object := self checkInclude: object.
	(object testing size == 0) ifTrue: [ object testing: nil ].
	^ object