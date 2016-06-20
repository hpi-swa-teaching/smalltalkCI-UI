utils
excludePackages
	| packages |
	packages := self exclude at: SGIData packagesCollectionString.
	packages := self promptForPackagesWithTests at: 1.
	packages do: [:package | self exclude: (package packageName) at: SGIData packagesCollectionString]