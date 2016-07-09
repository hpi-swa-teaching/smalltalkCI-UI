user-interface
buildCategoriesIncludeWith: builder
	| panelSpec choseSpec |
	panelSpec := builder pluggablePanelSpec new.
	choseSpec := builder pluggableButtonSpec new.
	
	panelSpec 
		model: self logic;
		frame: self class categoriesIncludePanelFrame;
		children: OrderedCollection new.
	choseSpec 
		model: self logic;
		label: self class categoriesIncludeButtonLabel;
		frame: self class categoriesIncludeFrame;
		action: [self logic includeCategories].
	panelSpec children
		add: choseSpec.

	 ^ panelSpec