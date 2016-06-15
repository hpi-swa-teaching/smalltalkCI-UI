testing
testRetrieveName
	| logic baselineName configurationName |
	logic := self setup.
	baselineName := logic retrieveName: 'BaselineOfProject11'.
	self 
		assert: (baselineName = 'Project11');
		assert: (baselineName = logic baseline);
		assert: (baselineName = logic projectName);
		assert: (logic configuration isNil).
	configurationName := logic retrieveName: 'ConfigurationOfProject11'.
	self 
		assert: (configurationName = 'Project11');
		assert: (configurationName = logic configuration);
		assert: (configurationName = logic projectName);
		assert: (logic baseline isNil).
	self assert: ((logic retrieveName: 'DumpClass') isNil)