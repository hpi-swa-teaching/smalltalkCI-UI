functionality
testSetup

	| editorTool |
	editorTool := self setup.
	self assert: (editorTool notNil).