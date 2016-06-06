functionality
testCloseButtonAction
	| tool |
	tool := self setup.
	tool buildWith: ToolBuilder default.
	self shouldnt: tool closeButtonAction raise: Error.
	self assert: tool closeDialog notNil.
 	tool closeDialog delete