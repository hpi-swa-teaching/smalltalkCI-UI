utils
excludeTests
	| testCases |
	testCases := self exclude at: SGIData testCasesCollectionString.
	self resetExclude: SGIData testCasesCollectionString.
	testCases := (self promptForTestCasesWithPreChoice: testCases) at: 1.
	testCases ifNotNil: [ testCases do: [ :testCase | self exclude: testCase at: SGIData testCasesCollectionString ] ].
	self changed: #includedTestsNames