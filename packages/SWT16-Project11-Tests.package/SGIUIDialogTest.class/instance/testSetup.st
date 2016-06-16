testing
testSetup 
	| dialog |
	self 
		shouldnt: (dialog := self setup) raise: Error;
		assert: dialog firstAnswer = SGIUIDialog defaultFirstAnswer;
		assert: dialog secondAnswer = SGIUIDialog defaultSecondAnswer;
		assert: dialog firstAnswerAction = SGIUIDialog defaultAnswerAction;
		assert: dialog secondAnswerAction = SGIUIDialog defaultAnswerAction
