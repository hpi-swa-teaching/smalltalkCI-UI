user-interface
buildStonInputFieldWith: builder
	| panelSpec inputSpec |
	panelSpec := builder pluggablePanelSpec new.
	inputSpec := builder pluggableInputFieldSpec new.
	
	panelSpec 
		model: self logic;
		frame: self class stonInputPanelFrame;
		children: OrderedCollection new.
	inputSpec
		model: self logic;
		getText: #fileName;
		setText: #fileName;
		frame: self class stonInputFrame.
	panelSpec children 
		add: inputSpec.
	
	 ^ panelSpec