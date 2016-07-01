prompting
promptForCategoriesWithPreChoice: aCollection
	| categories |
	categories := SmalltalkCI allCategoryNames.
	categories := Array
		with: (SGIListMultipleChooser
			chooseItemListFrom: (categories 
				collect: [:subclass | subclass asString ])
				title: 'Select Categories'
				preChoose: aCollection).
	^ categories