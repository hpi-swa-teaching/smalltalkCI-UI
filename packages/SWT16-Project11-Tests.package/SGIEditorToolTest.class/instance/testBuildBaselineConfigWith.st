user interface
testBuildBaselineConfigWith

	| builder editorTool panel |
	builder := ToolBuilder default.
	editorTool := self setup.
	panel := editorTool buildBaselineConfigChoseWith: builder.
	self 
		assert: (panel notNil);
		assert: (panel children size = 2);
		assert: ((panel children at: 1) class = PluggableInputFieldSpec);
		assert: ((panel children at: 2) class = PluggableButtonSpec);
		assert: (editorTool projectName = 'Project Name').