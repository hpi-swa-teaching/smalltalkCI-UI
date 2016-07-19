testing
testRetrieveNameFromBaseline
	| logic baselineName |
	logic := self setup.
	baselineName := logic retrieveName: self class defaultBaseline.
	self 
		assert: (baselineName = self class defaultProjectName);
		assert: (baselineName = logic baseline);
		assert: (baselineName = logic projectName);
		assert: (logic configuration isNil)