utils
excludePackages
	| packages |
	packages := self exclude at: SGIData packagesCollectionString.
	self resetExclude: SGIData packagesCollectionString.
	packages := (self promptForPackagesWithTestsWithPreChoice: packages) at: 1.
	packages ifNotNil: [
		packages do: [:package | self exclude: (package) at: SGIData packagesCollectionString]].
	self changed: #includedTestsNames