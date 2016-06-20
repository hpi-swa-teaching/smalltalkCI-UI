button-actions
saveButtonAction
	((FileDirectory on: self path) fileExists: self fileName) 
		ifFalse: [ self model saveSton.
				 self inform: 'saved succesfully!' ] 
		ifTrue: [ SGIUIDialog 
				openWithQuestion: 'File allready exists, overwrite?'
				firstAction: [self overwriteSton.
							self inform: 'saved successfully!']
				andSecondAction: [] ]