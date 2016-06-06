functionality
testSetup
	| editorTool |
	editorTool := self setup.
	self assert: (editorTool notNil).
	editorTool := SGIEditorTool open.
	self assert: (editorTool notNil).
	editorTool delete.