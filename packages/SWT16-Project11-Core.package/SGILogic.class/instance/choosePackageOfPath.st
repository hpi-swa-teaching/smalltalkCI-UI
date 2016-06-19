choosing
choosePackageOfPath
	| folder stringCollection choosenPackage |
	folder := SGIFileList modalFolderSelector: (FileDirectory on: self path) path: self path.
	folder ifNotNil: [
		folder := folder fullName.
		(folder includesSubString: self path)
		ifTrue: [
			stringCollection := (folder subStrings: '\') asOrderedCollection.
			choosenPackage := stringCollection at: stringCollection size.
			self package: choosenPackage]
		ifFalse: []]