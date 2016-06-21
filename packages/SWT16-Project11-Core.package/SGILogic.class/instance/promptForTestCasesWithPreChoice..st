prompting
promptForTestCasesWithPreChoice: aCollection
	| testCases |
	testCases := TestCase allSubclasses sort: [:a :b | a  asString < b asString].
	testCases := Array
		with: (SGIListMultipleChooser
			chooseItemListFrom: (testCases 
				collect: [:subclass | subclass asString ])
				title: 'Select TestCases'
				preChoose: aCollection).
	^ testCases