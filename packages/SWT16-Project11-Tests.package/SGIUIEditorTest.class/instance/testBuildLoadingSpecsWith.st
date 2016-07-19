testing
testBuildLoadingSpecsWith
	| builder editorTool panel |
	builder := ToolBuilder default.
	editorTool := self setup.
	panel := editorTool buildLoadingSpecsWith: builder.
	self 
		assert: (panel notNil);
		assert: (panel children size = 4);
		assert: ((panel children at: 1) class = PluggableListSpec);
		assert: ((panel children at: 2) class = PluggableButtonSpec);
		assert: ((panel children at: 3) class = PluggableButtonSpec);
		assert: ((panel children at: 4) class = PluggableButtonSpec)