utils
includePackages
	| packages |
	packages := self include at: SGIData packagesCollectionString.
	self resetInclude: SGIData packagesCollectionString.
	packages := (self promptForPackagesWithTestsWithPreChoice: packages) at: 1.
	packages ifNotNil: [
		packages do: [:package | self include: (package) at: SGIData packagesCollectionString]].
	self changed: #includedTestsNames