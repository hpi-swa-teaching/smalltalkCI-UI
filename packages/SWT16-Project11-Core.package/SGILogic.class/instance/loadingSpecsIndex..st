accessing
loadingSpecsIndex: anObject 
	self refactoringNote: 'Sieht merkwürdig aus. Der 0 check sieht komisch aus.'.
	(anObject == 0) ifTrue: [ loadingSpecsIndex := 1 ] ifFalse: [ loadingSpecsIndex := anObject ].
	self loadLoadingSpecs