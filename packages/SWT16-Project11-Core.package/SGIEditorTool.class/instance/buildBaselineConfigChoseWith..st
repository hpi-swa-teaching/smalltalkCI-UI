user interface
buildBaselineConfigChoseWith: builder

	| panelSpec nameLabelSpec choseSpec |
	
	panelSpec := builder pluggablePanelSpec new.
	nameLabelSpec := builder pluggableInputFieldSpec new.
	choseSpec := builder pluggableButtonSpec new.
	
	panelSpec 
		model: self;
		frame: (0.5@0.33 corner: 1@0.4);
		children: OrderedCollection new.
	nameLabelSpec
		model: self;
		setText: #baselineConfigChoseLabel;
		frame: (0@0 corner: 0.5@1).
	choseSpec 
		model: self;
		label: #baselineConfigChoseButtonLabel;
		frame: (0.5@0 corner: 1@1);
		action: #promptForBaselineConfigs.
		
	panelSpec children add: nameLabelSpec.
	panelSpec children add: choseSpec.
	
	 ^ panelSpec.