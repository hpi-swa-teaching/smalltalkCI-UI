button-actions
saveButtonAction
	(self path = FileDirectory root fullName)
		ifTrue: [ self inform: 'You can not save in root' ]
		ifFalse: [ ((FileDirectory on: self path) fileExists: self fileName)
			ifFalse: [ self data saveSton.
				self inform: 'saved succesfully!' ]
			ifTrue: [ self askForOverwriting ] ]