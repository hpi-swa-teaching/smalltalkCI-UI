choosing
choosePackageOfPath
	| folder stringCollection choosenPackage |
	self refactoringNote: 'Der Methode würden ein paar Kommentare gut stehen.'.
	folder := SGIFileList modalFolderSelector: (FileDirectory on: self path) path: self path.
	folder ifNotNil: [
		folder := folder fullName.
		(folder includesSubString: self path)
			ifTrue: [
				stringCollection := (folder subStrings:  FileDirectory primPathNameDelimiter asString) asOrderedCollection.
				choosenPackage := stringCollection at: stringCollection size.
				self package: choosenPackage ]
			ifFalse: [  ] ]