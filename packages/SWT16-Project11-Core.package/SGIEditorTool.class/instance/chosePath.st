chosing
chosePath
	| fc stream |
	fc := FileChooser new.
	fc initializeAsDialogBox.
	fc setDirectory: (FileDirectory on: self path).
	fc setCaption: 'Choose your ston directory' translated.
	stream := self promptForPath: fc.
	stream ifNotNil: [
		self path: stream.
	]