user-interface
buildBaselineConfigChooseWith: builder
	| panelSpec inputSpec choseSpec |
	panelSpec := builder pluggablePanelSpec new.
	inputSpec := builder pluggableInputFieldSpec new.
	choseSpec := builder pluggableButtonSpec new.
	
	panelSpec 
		model: self;
		frame: self class baselineConfigPanelFrame;
		children: OrderedCollection new.
	inputSpec
		model: self;
		getText: #projectName;
		setText: #projectName:;
		frame: self class baselineConfigInputFrame.
	choseSpec 
		model: self;
		label: self class baselineConfigChooseButtonLabel;
		frame: self class baselineConfigChooseFrame;
		action: [self logic chooseBaselineOrConfig].		
	panelSpec children 
		add: inputSpec;
		add: choseSpec.

	 ^ panelSpec