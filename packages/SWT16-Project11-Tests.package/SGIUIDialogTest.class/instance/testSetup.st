testing
testSetup 
	| dialog |
	self 
		shouldnt: (dialog := self setup) raise: Error;
		assert: dialog firstAnswer = SGIUIDialog defaultFirstAnswer;
		assert: dialog secondAnswer = SGIUIDialog defaultSecondAnswer;
		assert: dialog firstAnswerAction notNil;
		assert: dialog secondAnswerAction notNil
