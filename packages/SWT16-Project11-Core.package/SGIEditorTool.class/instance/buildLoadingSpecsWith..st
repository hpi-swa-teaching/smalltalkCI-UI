user interface
buildLoadingSpecsWith: builder

	| panelSpec loadingSpecsListSpec addButtonSpec removeButtonSpec |
	
	panelSpec := builder pluggablePanelSpec new.
	loadingSpecsListSpec := builder pluggableListSpec new.
	addButtonSpec := builder pluggableButtonSpec new.
	removeButtonSpec := builder pluggableButtonSpec new.
	
	panelSpec 
		model: self;
		frame: self class loadingSpecsFrame;
		children: OrderedCollection new.

	loadingSpecsListSpec
		model: self;
		"list: self class loadingSpecs;"
		frame: self class loadingSpecsListFrame.

	addButtonSpec
		model: self;
		label: #addButtonLabel;
		frame: self class loadingSpecsAddButtonFrame.
	
	removeButtonSpec
		model: self;
		label: #removeButtonLabel;
		frame: self class loadingSpecsRemoveButtonFrame.
		
	panelSpec children 
		add: loadingSpecsListSpec;
		add: addButtonSpec;
		add: removeButtonSpec.
	
	 ^ panelSpec.