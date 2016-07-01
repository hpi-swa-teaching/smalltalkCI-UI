user-interface
buildTestsExcludeWith: builder
	| panelSpec choseSpec |
	panelSpec := builder pluggablePanelSpec new.
	choseSpec := builder pluggableButtonSpec new.
	
	panelSpec 
		model: self logic;
		frame: self class testsExcludePanelFrame;
		children: OrderedCollection new.
	choseSpec 
		model: self logic;
		label: self class testsExcludeButtonLabel;
		frame: self class testsExcludeFrame;
		action: [self logic excludeTests].
	panelSpec children
		add: choseSpec.

	 ^ panelSpec