button-actions
saveButtonAction
	(self path = FileDirectory root fullName)
	ifTrue: [self inform: 'You can not save in root'] 
	ifFalse: [
	((FileDirectory on: self path) fileExists: self fileName) 
		ifFalse: [ self model saveSton.
				 self inform: 'saved succesfully!' ] 
		ifTrue: [ SGIUIDialog 
				openWithQuestion: 'File allready exists, overwrite?'
				firstAction: [self overwriteSton.
							self inform: 'saved successfully!']
				andSecondAction: [] ].
			]