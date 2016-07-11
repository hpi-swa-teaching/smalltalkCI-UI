utils
includeCategories
	| category |
	category := self include at: SGIData categoriesCollectionString.
	self resetInclude: SGIData categoriesCollectionString.
	category := (self promptForCategoriesWithPreChoice: category) at: 1.
	category ifNotNil: [
		category do: [:categories | self include: (categories asString) at: SGIData categoriesCollectionString]].
	self changed: #includedTestsNames