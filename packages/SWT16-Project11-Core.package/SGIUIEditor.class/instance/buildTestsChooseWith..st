user-interface
buildTestsChooseWith: builder 
	| panelSpec choseSpec |
	panelSpec := builder pluggablePanelSpec new.
	choseSpec := builder pluggableButtonSpec new.
	panelSpec
		model: self logic;
		frame: self class testsPanelFrame;
		children: OrderedCollection new.
	choseSpec
		model: self logic;
		label: self class testsChooseButtonLabel;
		frame: self class testsChooseFrame;
		action: [ self logic chooseTests ].
	panelSpec children add: choseSpec.
	^ panelSpec