prompting
promptForTestCases
	| testCases |
	testCases := TestCase allSubclasses sort: [:a :b | a  asString < b asString].
	testCases := Array
		with: (UIManager default
			chooseMultipleFrom: (testCases 
				collect: [:subclass | subclass asString ])
				values: testCases
				lines: #('AliasTest')
				title: 'Select TestCases').
	^ testCases