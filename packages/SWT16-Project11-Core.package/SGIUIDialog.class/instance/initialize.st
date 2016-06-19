initialize
initialize
	super initialize.
	self
		firstAnswer: self class defaultFirstAnswer;
		secondAnswer: self class defaultSecondAnswer;
		firstAnswerAction: self class defaultAnswerAction;
		secondAnswerAction: self class defaultAnswerAction