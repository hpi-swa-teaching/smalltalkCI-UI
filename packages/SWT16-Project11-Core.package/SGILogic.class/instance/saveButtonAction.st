button-actions
saveButtonAction
	((FileDirectory on: self path) fileExists: self fileName) 
		ifFalse: [ self model saveSton] 
		ifTrue: [ SGIUIDialog 
				openWithQuestion: 'Name allready exists, overwrite?'
				firstAction: [self overwriteSton]
				andSecondAction: [self exitSaveDialog] ]