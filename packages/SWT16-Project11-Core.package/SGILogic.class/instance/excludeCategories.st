utils
excludeCategories
	| category |
	category := self exclude at: SGIData categoriesCollectionString.
	self resetExclude: SGIData categoriesCollectionString.
	category := (self promptForCategoriesWithPreChoice: category) at: 1.
	category ifNotNil: [
		category do: [:categories | self exclude: (categories asString) at: SGIData categoriesCollectionString]].
	self changed: #includedTestsNames