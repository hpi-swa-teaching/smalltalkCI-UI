testing
open
	^ SGIUIDialog 
		openWithQuestion: self class defaultDialogQuestion
		firstAction: self class defaultFirstAction  
		andSecondAction: self class defaultSecondAction