user-interface
buildCategoriesExcludeWith: builder
	| panelSpec choseSpec |
	panelSpec := builder pluggablePanelSpec new.
	choseSpec := builder pluggableButtonSpec new.
	
	panelSpec 
		model: self logic;
		frame: self class categoriesExcludePanelFrame;
		children: OrderedCollection new.
	choseSpec 
		model: self logic;
		label: self class categoriesExcludeButtonLabel;
		frame: self class categoriesExcludeFrame;
		action: [self logic excludeCategories].
	panelSpec children
		add: choseSpec.

	 ^ panelSpec