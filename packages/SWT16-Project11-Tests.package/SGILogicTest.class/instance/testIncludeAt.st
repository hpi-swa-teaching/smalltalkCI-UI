testing
testIncludeAt
	| logic |
	logic := self setup.
	logic include: 'TestCase' at: SGIData packagesCollectionString.
	self 
		assert: (logic include size > 0);
		assert: ((logic include at: SGIData packagesCollectionString) at: 1) = 'TestCase' 