testing
testExecuteFirstAnswerAction
	| dialog |
	dialog := self setup.
	dialog window: (ToolBuilder default open: SystemWindow new).
	self 
		shouldnt: (dialog executeFirstAnswerAction) raise: Error