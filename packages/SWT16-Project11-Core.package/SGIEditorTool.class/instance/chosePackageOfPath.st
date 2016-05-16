chosing
chosePackageOfPath
	| fc stream containsPath stringCollection choosenPackage |
	fc := FileChooser new.
	fc initializeAsDialogBox.
	fc setDirectory: (FileDirectory on: self path).
	fc setCaption: 'Choose your package' translated.
	stream := self promptForPath: fc.
	stream ifNotNil: [
		containsPath := stream includesSubString: self path.
		containsPath
		ifTrue: [
			stringCollection := (stream subStrings: '\') asOrderedCollection.
			choosenPackage := stringCollection at: stringCollection size.
			self package: choosenPackage.
			];
		ifFalse: [].
		].