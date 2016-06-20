testing
testExcludeAt
	| logic |
	logic := self setup.
	logic exclude: 'TestCase' at: SGIData packagesCollectionString.
	self 
		assert: (logic exclude size > 0);
		assert: ((logic exclude at: SGIData packagesCollectionString) at: 1) = 'TestCase' 