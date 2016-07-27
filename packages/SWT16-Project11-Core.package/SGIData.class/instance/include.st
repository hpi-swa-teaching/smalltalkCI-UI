accessing
include
	self refactoringNote: 'Nil checks sind BÖÖÖSE. Kann das überhaupt Nil werden?'.
	^ include ifNil: [ include := Dictionary new ]