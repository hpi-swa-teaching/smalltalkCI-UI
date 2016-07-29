utils
askForOverwriting	
	SGIUIDialog
		openWithQuestion: 'File already exists, overwrite?'
		firstAction: [
			self overwriteSton.
			self inform: 'saved successfully!' ]
		andSecondAction: [  ] 