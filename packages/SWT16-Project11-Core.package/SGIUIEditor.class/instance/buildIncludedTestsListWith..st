user-interface
buildIncludedTestsListWith: builder
	| panelSpec includedTestsListSpec |
	panelSpec := builder pluggablePanelSpec new.
	includedTestsListSpec := builder pluggableListSpec new.
	
	panelSpec
		model: self logic;
		frame: self class includedTestsPanelFrame;
		children: OrderedCollection new.
	includedTestsListSpec
		model: self logic;
		list: #includedTestsNames;
		getIndex: #includedTestsIndex;
		setIndex: #includedTestsIndex:;
		frame: self class includedTestsListFrame.

	panelSpec children add: includedTestsListSpec.

	 ^ panelSpec