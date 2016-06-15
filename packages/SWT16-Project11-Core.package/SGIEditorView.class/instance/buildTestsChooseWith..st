user-interface
buildTestsChooseWith: builder
	| panelSpec choseSpec |
	panelSpec := builder pluggablePanelSpec new.
	choseSpec := builder pluggableButtonSpec new.
	
	panelSpec 
		model: self;
		frame: self class testsPanelFrame;
		children: OrderedCollection new.
	choseSpec 
		model: self;
		label: self class testsChoseButtonLabel;
		frame: self class testsChoseFrame;
		action: [self logic chooseTests].
	panelSpec children
		add: choseSpec.

	 ^ panelSpec