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
		frame: (0@0 corner: 1@0.95).

	addButtonSpec
		model: self;
		label: #addButtonLabel;
		frame: (0.80@0.95 corner: 0.90@1).
	
	removeButtonSpec
		model: self;
		label: #removeButtonLabel;
		frame: (0.90@0.95 corner: 1@1).
		
	panelSpec children add: loadingSpecsListSpec.	
	panelSpec children add: addButtonSpec.
	panelSpec children add: removeButtonSpec.
	
	 ^ panelSpec.