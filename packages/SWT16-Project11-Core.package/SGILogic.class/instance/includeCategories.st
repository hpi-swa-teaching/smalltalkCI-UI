utils
includeCategories
	| category |
	self refactoringNote: 'Vom Gefühl her würde ich behaupten man kann includeCategories, includePackages und includeTests in einer Methode mit Paramter erledigen.'.
	self refactoringNote: 'Bitte kommentieren'.
	category := self include at: SGIData categoriesCollectionString.
	self resetInclude: SGIData categoriesCollectionString.
	category := (self promptForCategoriesWithPreChoice: category) at: 1.
	category ifNotNil: [ category do: [ :categories | self include: (categories asString) at: SGIData categoriesCollectionString ] ].
	self changed: #includedTestsNames