utils
includeTests
	| testCases |
	testCases := self include at: SGIData testCasesCollectionString.
	self resetInclude: SGIData testCasesCollectionString.
	testCases := (self promptForTestCasesWithPreChoice: testCases) at: 1.
	testCases ifNotNil: [
		testCases do: [:testCase | self include: (testCase asString) at: SGIData testCasesCollectionString]].
	self changed: #includedTestsNames