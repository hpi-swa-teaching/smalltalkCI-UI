testing
testSetup
	| editorTool |
	editorTool := self setup.
	self assert: (editorTool notNil);
		assert: (editorTool uiEditor okToClose = false).
	editorTool uiEditor okToClose: true.
	editorTool uiEditor window delete