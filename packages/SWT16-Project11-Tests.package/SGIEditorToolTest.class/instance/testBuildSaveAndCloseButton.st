user interface
testBuildSaveAndCloseButton
	| builder editorTool panel |
	builder := ToolBuilder default.
	editorTool := self setup.
	panel := editorTool buildSaveAndCloseButtonWith: builder.
	self 
		assert: (panel notNil);
		assert: (panel children size = 2);
		assert: ((panel children at: 1) class = PluggableButtonSpec);
		assert: ((panel children at: 2) class = PluggableButtonSpec);
		shouldnt: ((panel children at: 1) action) raise: Error; 
		shouldnt: ((panel children at: 2) action) raise: Error.