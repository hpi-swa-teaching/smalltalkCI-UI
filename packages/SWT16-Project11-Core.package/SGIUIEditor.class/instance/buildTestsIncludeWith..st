user-interface
buildTestsIncludeWith: builder
	| panelSpec choseSpec |
	panelSpec := builder pluggablePanelSpec new.
	choseSpec := builder pluggableButtonSpec new.
	
	panelSpec 
		model: self logic;
		frame: self class testsIncludePanelFrame;
		children: OrderedCollection new.
	choseSpec 
		model: self logic;
		label: self class testsIncludeButtonLabel;
		frame: self class testsIncludeFrame;
		action: [self logic includeTests].
	panelSpec children
		add: choseSpec.

	 ^ panelSpec