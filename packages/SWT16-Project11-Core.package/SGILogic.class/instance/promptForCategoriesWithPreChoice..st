prompting
promptForCategoriesWithPreChoice: aCollection 
	| categories |
	categories := SmalltalkCI allCategoryNames.
	categories := Array with: (SGIListMultipleChooser
		chooseItemListFrom: (categories collect: [ :subclass | subclass asString ])
		title: self class selectCategoriesTitle
		preChoose: aCollection).
	^ categories