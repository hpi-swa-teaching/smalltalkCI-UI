chosing
chosePackageOfPath
	| fc stream |
	fc := FileChooser new.
	fc initializeAsDialogBox.
	fc setDirectory: (FileDirectory on: 'C:\Windows')       ."root."
	"path."
	fc setCaption: 'Choose your package' translated.
	stream := self promptForPackagePath: fc.
	stream ifNotNil: [
		self package: stream.
		].