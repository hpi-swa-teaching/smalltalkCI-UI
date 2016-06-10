user interface
testRemoveLastLoadSpecDialog
	| builder editorTool panel |
	builder := ToolBuilder default.
	editorTool := self setup.
	editorTool buildWith: builder.
	panel := editorTool removeLastLoadSpecDialog.
	self 
		assert: (panel notNil);
		assert: (panel children size = 1);
		assert: ((panel children at: 1) class = PluggableButtonSpec).
	editorTool deleteRemoveLastLoadSpecDialog.