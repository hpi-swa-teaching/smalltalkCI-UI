chosing
chosePackageOfPath
	| fc stream |
	fc := FileChooser new.
	fc initializeAsDialogBox.
	fc setDirectory: (FileDirectory on: self path)       ."root."
	"path."
	fc setCaption: 'Choose your package' translated.
	stream := self promptForPackagePath: fc.
	stream ifNotNil: [
		self package: stream.
		].