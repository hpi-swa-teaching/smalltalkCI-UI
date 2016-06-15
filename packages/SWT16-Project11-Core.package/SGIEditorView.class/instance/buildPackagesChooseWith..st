user-interface
buildPackagesChooseWith: builder
	| panelSpec choseSpec |
	panelSpec := builder pluggablePanelSpec new.
	choseSpec := builder pluggableButtonSpec new.
	
	panelSpec 
		model: self;
		frame: self class packagesPanelFrame;
		children: OrderedCollection new.
	choseSpec 
		model: self;
		label: self class packagesChoseButtonLabel;
		frame: self class packagesChoseFrame;
		action: [self logic choosePackages].	
	panelSpec children 
		add: choseSpec.

	 ^ panelSpec