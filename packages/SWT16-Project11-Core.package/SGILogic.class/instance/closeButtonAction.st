button-actions
closeButtonAction
	^ SGIUIDialog
		openWithQuestion: 'There might be unsaved changes, close anyway?'
		firstAction: [ self changed: #exit ]
		andSecondAction: [  ]