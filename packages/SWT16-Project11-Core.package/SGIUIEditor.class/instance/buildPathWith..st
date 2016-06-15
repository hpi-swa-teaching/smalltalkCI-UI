user-interface
buildPathWith: builder
	| panelSpec inputSpec choseSpec |
	panelSpec := builder pluggablePanelSpec new.
	inputSpec := builder pluggableInputFieldSpec new.
	choseSpec := builder pluggableButtonSpec new.
	
	panelSpec 
		model: self logic;
		frame: self class pathPanelFrame;
		children: OrderedCollection new.
	inputSpec
		model: self logic;
		getText: #path;
		setText: #path:;
		frame: self class pathInputFrame.
	choseSpec 
		model: self logic;
		label: self class pathChooseButtonLabel;
		frame: self class pathChooseFrame;
		action: [self logic choosePath].
	panelSpec children 
		add: inputSpec;
		add: choseSpec.
	
	 ^ panelSpec