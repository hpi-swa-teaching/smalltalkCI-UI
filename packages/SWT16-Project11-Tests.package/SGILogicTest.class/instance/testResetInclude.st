testing
testResetInclude
	| logic |
	logic := self testIncludeAt.
	logic resetInclude: SGIData testCasesCollectionString.
	self assert: ((logic include) at: SGIData testCasesCollectionString) size = 0.