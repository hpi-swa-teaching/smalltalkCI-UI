prompting
promptForTestCasesWithPreChoice: aCollection 
	| testCases |
	self refactoringNote: 'Hier wären Kommentare nicht schlecht.'.
	testCases := TestCase allSubclasses sort: [ :a :b | a asString < b asString ].
	testCases := Array with: (SGIListMultipleChooser
		chooseItemListFrom: (testCases collect: [ :subclass | subclass name ])
		title: 'Select TestCases'
		preChoose: aCollection).
	^ testCases