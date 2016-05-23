chosing
chosePackageOfPath
	| folder containsPath stringCollection choosenPackage|
	folder:= FileList2 modalFolderSelector.
	folder ifNotNil: [
		folder := folder fullName.
		containsPath := folder includesSubString: self path.
		containsPath
		ifTrue: [
			stringCollection := (folder subStrings: '\') asOrderedCollection.
			choosenPackage := stringCollection at: stringCollection size.
			self package: choosenPackage.
			];
		ifFalse: [].
		].