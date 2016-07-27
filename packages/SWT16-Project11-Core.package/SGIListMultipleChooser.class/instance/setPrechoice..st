prechoice
setPrechoice: someObjects 
	| i |
	self refactoringNote: 'Die Lösung mit der Zählvariable fühlt sich irgendwie ganz ganz falsch an!'.
	i := 0.
	self values do: [ :value |
		i := i + 1.
		self refactoringNote: 'Warum heißt es pre?'.
		someObjects do: [ :pre | (value asString = pre asString) ifTrue: [ self selectionAt: i put: true ] ] ]