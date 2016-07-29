testing
testBuildMenuButtonsWith
	| builder editorTool panel |
	builder := ToolBuilder default.
	editorTool := self setup.
	panel := editorTool buildMenuButtonsWith: builder.
	self
		assert: (panel notNil);
		assert: (panel children size = 3);
		assert: ((panel children at: 1) class = PluggableButtonSpec);
		assert: ((panel children at: 2) class = PluggableButtonSpec);
		assert: ((panel children at: 3) class = PluggableButtonSpec)