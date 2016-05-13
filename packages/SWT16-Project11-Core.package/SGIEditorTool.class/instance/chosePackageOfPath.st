chosing
chosePackageOfPath
	| fc stream temp |
	fc := FileChooser new.
	fc initializeAsDialogBox.
	fc setDirectory: (FileDirectory on: self path).
	fc setCaption: 'Choose your package' translated.
	stream := self promptForPackagePath: fc.
	stream ifNotNil: [
		temp := stream includesSubString: self path.
		temp
		ifTrue: [
			temp := (stream subStrings: '\') asOrderedCollection.
			temp := temp at: temp size.
			self package: temp.
			]
		ifFalse: [].
		
		].