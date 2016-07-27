utils
convertNameFromLoadingSpec: aLoadingSpec
	self refactoringNote: 'Nil checks und Verschachtelung, was für eine Kombination :D'. 
	(aLoadingSpec baseline notNil)
		ifTrue: [
			^ aLoadingSpec baseline ]
		ifFalse: [ (aLoadingSpec configuration notNil)
			ifTrue: [
				^ aLoadingSpec configuration ]
			ifFalse: [
				^ SGIData defaultLoadingSpecName ] ]