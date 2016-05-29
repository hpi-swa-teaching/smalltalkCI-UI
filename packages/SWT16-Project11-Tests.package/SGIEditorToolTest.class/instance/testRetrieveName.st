functionality
testRetrieveName
	| editorTool baselineName configurationName |
	editorTool := self setup.
	baselineName := editorTool retrieveName: 'BaselineOfProject11'.
	self 
		assert: (baselineName = 'Project11');
		assert: (baselineName = editorTool baseline);
		assert: (baselineName = editorTool projectName);
		assert: (editorTool configuration isNil).
	configurationName := editorTool retrieveName: 'ConfigurationOfProject11'.
	self 
		assert: (configurationName = 'Project11');
		assert: (configurationName = editorTool configuration);
		assert: (configurationName = editorTool projectName);
		assert: (editorTool baseline isNil).
	self assert: ((editorTool retrieveName: 'DumpClass') isNil)