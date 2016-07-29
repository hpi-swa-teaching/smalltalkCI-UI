choosing
choosePackageOfPath
	| folder stringCollection choosenPackage |
	"Opens a directory chooser for the loadSpec's package-property and filters out the super directories"
	folder := SGIFileList modalFolderSelector: (FileDirectory on: self path) path: self path.
	folder ifNotNil: [
		folder := folder fullName.
		(folder includesSubString: self path)
			ifTrue: [
				stringCollection := (folder subStrings:  FileDirectory primPathNameDelimiter asString) asOrderedCollection.
				choosenPackage := stringCollection at: stringCollection size.
				self package: choosenPackage ] ]