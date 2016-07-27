checking
checkExclude: anObject 
	self refactoringNote: 'Muss das wirklich eine eigene Methode sein? Schaut mal in die Senders.'.
	self check: anObject withKey: self class excludeDictionaryString.
	^ anObject