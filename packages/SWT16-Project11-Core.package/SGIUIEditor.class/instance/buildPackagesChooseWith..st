user-interface
buildPackagesChooseWith: builder
	| panelSpec choseSpec |
	panelSpec := builder pluggablePanelSpec new.
	choseSpec := builder pluggableButtonSpec new.
	
	panelSpec 
		model: self logic;
		frame: self class packagesPanelFrame;
		children: OrderedCollection new.
	choseSpec 
		model: self logic;
		label: self class packagesChooseButtonLabel;
		frame: self class packagesChooseFrame;
		action: [self logic choosePackages].	
	panelSpec children 
		add: choseSpec.

	 ^ panelSpec