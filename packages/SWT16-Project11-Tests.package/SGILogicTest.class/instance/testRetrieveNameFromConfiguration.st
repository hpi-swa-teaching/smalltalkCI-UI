testing
testRetrieveNameFromConfiguration
	| logic configurationName |
	logic := self setup.
	configurationName := logic retrieveName: self class defaultConfiguration.
	self
		assert: (configurationName = self class defaultProjectName);
		assert: (configurationName = logic configuration);
		assert: (configurationName = logic projectName);
		assert: (logic baseline isNil)