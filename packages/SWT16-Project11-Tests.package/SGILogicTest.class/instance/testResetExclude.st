testing
testResetExclude
	| logic |
	logic := self testExcludeAt.
	logic resetExclude: SGIData packagesCollectionString.
	self assert: ((logic exclude) at: SGIData packagesCollectionString) size = 0.