choosing
choosePackageOfPath
	| folder containsPath stringCollection choosenPackage |
	folder := SGIFileList modalFolderSelector: (FileDirectory on: self model path) path: self sgiModel path.
	folder ifNotNil: [
		folder := folder fullName.
		containsPath := folder includesSubString: self sgiModel path.
		containsPath
		ifTrue: [
			stringCollection := (folder subStrings: '\') asOrderedCollection.
			choosenPackage := stringCollection at: stringCollection size.
			self sgiModel package: choosenPackage]
		ifFalse: []]