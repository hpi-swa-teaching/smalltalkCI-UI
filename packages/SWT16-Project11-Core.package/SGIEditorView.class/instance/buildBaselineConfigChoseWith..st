user-interface
buildBaselineConfigChoseWith: builder
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
		setText: #projectName:;
		getText: #projectName;
		frame: self class baselineConfigInputFrame.
	choseSpec 
		model: self;
		label: #baselineConfigChoseButtonLabel;
		frame: self class baselineConfigChoseFrame;
		action: [self choseBaselineOrConfig].		
	panelSpec children 
		add: inputSpec;
		add: choseSpec.

	 ^ panelSpec