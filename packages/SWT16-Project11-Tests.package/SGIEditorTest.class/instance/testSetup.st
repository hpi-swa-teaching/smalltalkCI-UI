testing
testSetup
	| editorTool |
	editorTool := self setup.
	self assert: (editorTool notNil).
	self assert: (editorTool view okToClose = false).
	editorTool view okToClose: true.
	editorTool view window delete. 