testing
testExecuteSecondAnswerAction
	| dialog |
	dialog := self setup.
	dialog window: (ToolBuilder default open: SystemWindow new).
	self 
		shouldnt: (dialog executeSecondAnswerAction) raise: Error