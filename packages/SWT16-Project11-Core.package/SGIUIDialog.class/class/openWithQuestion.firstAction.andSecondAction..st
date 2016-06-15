initialize
openWithQuestion: aQuestion firstAction: aBlock andSecondAction: aSecondBlock
	^ self new
		dialogQuestion: aQuestion;
		firstAnswerAction: aBlock;
		secondAnswerAction: aSecondBlock