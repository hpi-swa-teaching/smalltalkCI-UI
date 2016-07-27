utils
excludeCategories
	| category |
	self refactoringNote: 'Vom Gefühl her würde ich behaupten man kann excludeCategories, excludePackages und excludeTests in einer Methode mit Paramter erledigen.'.
	self refactoringNote: 'Bitte kommentieren'.
	category := self exclude at: SGIData categoriesCollectionString.
	self resetExclude: SGIData categoriesCollectionString.
	category := (self promptForCategoriesWithPreChoice: category) at: 1.
	category ifNotNil: [ category do: [ :categories | self exclude: (categories asString) at: SGIData categoriesCollectionString ] ].
	self changed: #includedTestsNames