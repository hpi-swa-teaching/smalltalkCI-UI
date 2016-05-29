user interface
buildPathWith: builder
	| panelSpec inputSpec choseSpec |
	panelSpec := builder pluggablePanelSpec new.
	inputSpec := builder pluggableInputFieldSpec new.
	choseSpec := builder pluggableButtonSpec new.
	
	panelSpec 
		model: self;
		frame: self class pathPanelFrame;
		children: OrderedCollection new.
	inputSpec
		model: self;
		getText: #path;
		setText: #path:;
		frame: self class pathInputFrame.
	choseSpec 
		model: self;
		label: #pathChoseButtonLabel;
		frame: self class pathChoseFrame;
		action: [self chosePath].
	panelSpec children 
		add: inputSpec;
		add: choseSpec.
	
	 ^ panelSpec