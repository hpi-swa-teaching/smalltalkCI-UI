chosing
promptForTestCases
	| testCases |
	testCases := TestCase allSubclasses sort: [:a :b | a  asString < b asString].
	testCases := Array
		with: (UIManager default
			chooseMultipleFrom: (testCases 
				collect: [:subclass | subclass asString ])
				values: testCases
				title: 'Select TestCases').
	^ testCases