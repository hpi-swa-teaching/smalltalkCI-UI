accessing
exclude
	self refactoringNote: 'Nil checks sind BÖÖÖSE. Kann das überhaupt Nil werden?'.
	^ exclude ifNil: [ exclude := Dictionary new ]