user-interface
buildFilenameAndPathWith: builder
	| panelSpec nameInputSpec pathInputSpec pathButtonSpec |
	panelSpec := builder pluggablePanelSpec new.
	nameInputSpec := builder pluggableInputFieldSpec new.
	pathInputSpec := builder pluggableInputFieldSpec new.
	pathButtonSpec := builder pluggableButtonSpec new.
	
	panelSpec 
		model: self logic;
		frame: self class FilenameAndPathPanelFrame;
		children: OrderedCollection new.
	nameInputSpec
		model: self logic;
		getText: #fileName;
		setText: #fileName;
		frame: self class stonInputFrame.
	pathInputSpec
		model: self logic;
		getText: #path;
		setText: #path:;
		frame: self class pathInputFrame.
	pathButtonSpec 
		model: self logic;
		label: self class pathChooseButtonLabel;
		frame: self class pathChooseButtonFrame;
		action: [self logic choosePath].
	panelSpec children 
		add: nameInputSpec;
		add: pathInputSpec;
		add: pathButtonSpec.
	
	 ^ panelSpec