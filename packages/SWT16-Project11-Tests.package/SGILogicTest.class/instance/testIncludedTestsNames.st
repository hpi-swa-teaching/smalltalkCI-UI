testing
testIncludedTestsNames
	| logic |
	logic := self setup.
	self
		assert: (logic includedTestsNames size = 0);
		assert: (logic includedTestsNames class == OrderedCollection).
	^ logic