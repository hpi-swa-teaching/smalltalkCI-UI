testing
testBuildIncludeExcludeWith
	| builder editorTool panel |
	builder := ToolBuilder default.
	editorTool := self setup.
	panel := editorTool buildIncludeExcludeWith: builder.
	self
		assert: (panel notNil);
		assert: (panel children size = 6).
	panel children do: [ :child | self assert: (child class = PluggableButtonSpec) ]