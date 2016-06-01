user interface
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
		label: #packagesChoseButtonLabel;
		frame: self class packagesChoseFrame;
		action: #choosePackages.		
	panelSpec children 
		add: choseSpec.

	 ^ panelSpec