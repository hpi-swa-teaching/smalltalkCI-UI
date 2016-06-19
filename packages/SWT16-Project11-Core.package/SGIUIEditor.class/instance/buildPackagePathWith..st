user-interface
buildPackagePathWith: builder
	| panelSpec inputSpec choseSpec |
	panelSpec := builder pluggablePanelSpec new.
	inputSpec := builder pluggableInputFieldSpec new.
	choseSpec := builder pluggableButtonSpec new.
	
	panelSpec 
		model: self logic;
		frame: self class packagePathPanelFrame;
		children: OrderedCollection new.
	inputSpec
		model: self logic;
		getText: #package;
		setText: #package:;
		frame: self class packagePathInputFrame.
	choseSpec 
		model: self logic;
		label: self class packagePathChooseButtonLabel;
		frame: self class packagePathChooseFrame;
		action: [self logic choosePackageOfPath].
	panelSpec children 
		add: inputSpec;
		add: choseSpec.
	
	 ^ panelSpec