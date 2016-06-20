user-interface
buildPackagesExcludeWith: builder
	| panelSpec choseSpec |
	panelSpec := builder pluggablePanelSpec new.
	choseSpec := builder pluggableButtonSpec new.
	
	panelSpec 
		model: self logic;
		frame: self class packagesExcludePanelFrame;
		children: OrderedCollection new.
	choseSpec 
		model: self logic;
		label: self class packagesExcludeButtonLabel;
		frame: self class packagesExcludeFrame;
		action: [self logic excludePackages].	
	panelSpec children 
		add: choseSpec.

	 ^ panelSpec