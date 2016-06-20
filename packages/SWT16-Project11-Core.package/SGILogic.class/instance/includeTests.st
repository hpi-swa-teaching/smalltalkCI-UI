utils
includeTests
	| testCases |
	testCases := self include at: SGIData testCasesCollectionString.
	testCases := self promptForTestCases at: 1.
	testCases do: [:testCase | self include: (testCase asString) at: SGIData testCasesCollectionString]