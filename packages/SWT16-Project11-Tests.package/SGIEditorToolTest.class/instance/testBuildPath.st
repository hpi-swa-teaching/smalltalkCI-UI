user interface
testBuildPath

	| builder editorTool panel |
	builder := ToolBuilder default.
	editorTool := self setup.
	panel := editorTool buildPathWith: builder.
	self 
		assert: (panel notNil);
		assert: (panel children size = 2);
		assert: ((panel children at: 1) class = PluggableInputFieldSpec);
		assert: ((panel children at: 2) class = PluggableButtonSpec).