user-interface
buildLoadingSpecsWith: builder
	| panelSpec loadingSpecsListSpec addButtonSpec removeButtonSpec saveButtonSpec |
	panelSpec := builder pluggablePanelSpec new.
	loadingSpecsListSpec := builder pluggableListSpec new.
	addButtonSpec := builder pluggableButtonSpec new.
	removeButtonSpec := builder pluggableButtonSpec new.
	saveButtonSpec := builder pluggableButtonSpec new.
	
	panelSpec
		model: self logic;
		frame: self class loadingSpecsFrame;
		children: OrderedCollection new.
	loadingSpecsListSpec
		model: self logic;
		list: #loadingSpecsNames;
		getIndex: #loadingSpecsIndex;
		setIndex: #loadingSpecsIndex:;
		frame: self class loadingSpecsListFrame.
	addButtonSpec
		model: self logic;
		label: self class addButtonLabel;
		frame: self class loadingSpecsAddButtonFrame;
		action: [self logic addSpecButtonAction].
	removeButtonSpec
		model: self logic;
		label: self class removeButtonLabel;
		frame: self class loadingSpecsRemoveButtonFrame;
		action: [self logic removeSpecButtonAction].
	saveButtonSpec
		model: self logic;
		label: self class saveLoadingSpecButtonLabel;
		frame: self class loadingSpecsSaveButtonFrame;
		action: [self logic saveSpecButtonAction].
	panelSpec children 
		add: loadingSpecsListSpec;
		add: addButtonSpec;
		add: removeButtonSpec;
		add: saveButtonSpec.

	 ^ panelSpec