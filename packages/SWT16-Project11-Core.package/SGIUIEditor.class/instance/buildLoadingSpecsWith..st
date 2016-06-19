user-interface
buildLoadingSpecsWith: builder
	| panelSpec loadingSpecsListSpec addButtonSpec removeButtonSpec loadButtonSpec |
	panelSpec := builder pluggablePanelSpec new.
	loadingSpecsListSpec := builder pluggableListSpec new.
	addButtonSpec := builder pluggableButtonSpec new.
	removeButtonSpec := builder pluggableButtonSpec new.
	loadButtonSpec := builder pluggableButtonSpec new.
	
	panelSpec
		model: self logic;
		frame: self class loadingSpecsFrame;
		children: OrderedCollection new.
	loadingSpecsListSpec
		model: self logic;
		list: #loadingSpecs;
		getIndex: #loadingSpecsIndex;
		setIndex: #loadingSpecsIndex:;
		frame: self class loadingSpecsListFrame.
	addButtonSpec
		model: self logic;
		label: self class addButtonLabel;
		frame: self class loadingSpecsAddButtonFrame;
		action: [self logic acceptAddSpecDialogAction].
	removeButtonSpec
		model: self logic;
		label: self class removeButtonLabel;
		frame: self class loadingSpecsRemoveButtonFrame;
		action: [self logic removeSpecButtonAction].
	loadButtonSpec
		model: self logic;
		label: self class loadSpecButtonLabel;
		frame: self class loadingSpecsLoadButtonFrame;
		action: [self logic loadSpecButtonAction].
	panelSpec children 
		add: loadingSpecsListSpec;
		add: addButtonSpec;
		add: removeButtonSpec;
		add: loadButtonSpec.

	 ^ panelSpec