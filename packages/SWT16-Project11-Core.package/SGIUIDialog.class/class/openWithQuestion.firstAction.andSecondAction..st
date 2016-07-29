initialize
openWithQuestion: aQuestion firstAction: aBlock andSecondAction: aSecondBlock 
	^ ToolBuilder default open: (self new
		dialogQuestion: aQuestion;
		firstAnswerAction: aBlock;
		secondAnswerAction: aSecondBlock)