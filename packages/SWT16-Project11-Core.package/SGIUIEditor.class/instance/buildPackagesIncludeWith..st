user-interface
buildPackagesIncludeWith: builder
	| panelSpec choseSpec |
	panelSpec := builder pluggablePanelSpec new.
	choseSpec := builder pluggableButtonSpec new.
	
	panelSpec 
		model: self logic;
		frame: self class packagesIncludePanelFrame;
		children: OrderedCollection new.
	choseSpec 
		model: self logic;
		label: self class packagesIncludeButtonLabel;
		frame: self class packagesIncludeFrame;
		action: [self logic includePackages].	
	panelSpec children 
		add: choseSpec.

	 ^ panelSpec