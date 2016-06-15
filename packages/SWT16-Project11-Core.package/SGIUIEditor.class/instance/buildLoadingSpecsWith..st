user-interface
buildLoadingSpecsWith: builder
	| panelSpec loadingSpecsListSpec addButtonSpec removeButtonSpec loadButtonSpec |
	panelSpec := builder pluggablePanelSpec new.
	loadingSpecsListSpec := builder pluggableListSpec new.
	addButtonSpec := builder pluggableButtonSpec new.
	removeButtonSpec := builder pluggableButtonSpec new.
	loadButtonSpec := builder pluggableButtonSpec new.
	
	panelSpec
		model: self;
		frame: self class loadingSpecsFrame;
		children: OrderedCollection new.
	loadingSpecsListSpec
		model: self;
		list: #loadingSpecs;
		getIndex: #loadingSpecsIndex;
		setIndex: #loadingSpecsIndex:;
		frame: self class loadingSpecsListFrame.
	addButtonSpec
		model: self;
		label: self class addButtonLabel;
		frame: self class loadingSpecsAddButtonFrame;
		"action: #addSpecButtonAction."
		action: [self logic acceptAddSpecDialogAction].
	removeButtonSpec
		model: self;
		label: self class removeButtonLabel;
		frame: self class loadingSpecsRemoveButtonFrame;
		action: [self logic removeSpecButtonAction].
	loadButtonSpec
		model: self;
		label: self class loadSpecButtonLabel;
		frame: self class loadingSpecsLoadButtonFrame;
		action: [self logic loadSpecButtonAction].
	panelSpec children 
		add: loadingSpecsListSpec;
		add: addButtonSpec;
		add: removeButtonSpec;
		add: loadButtonSpec.

	 ^ panelSpec