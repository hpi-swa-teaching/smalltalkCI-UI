accessing
path
	self refactoringNote: 'Igittigitt. Schon wieder Nil checks. Kann man das nicht über ein initialize mit defaults regeln?'.
	self refactoringNote: 'Muss das Klassenseitig sein?'.
	Path ifNil: [ ^ '' ].
	^ Path