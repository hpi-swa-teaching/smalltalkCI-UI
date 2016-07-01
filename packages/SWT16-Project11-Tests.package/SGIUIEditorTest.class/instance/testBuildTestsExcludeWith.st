testing
testBuildTestsExcludeWith
	| builder editorTool panel |
	builder := ToolBuilder default.
	editorTool := self setup.
	panel := editorTool buildTestsExcludeWith:  builder.
	self 
		assert: (panel notNil);
		assert: (panel children size = 1);
		assert: ((panel children at: 1) class = PluggableButtonSpec)