user interface
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
		label: #testsChoseButtonLabel;
		frame: self class testsChoseFrame;
		action: #chooseTests.		
	panelSpec children 
		add: choseSpec.

	 ^ panelSpec