user-interface
buildPlatformChooseWith: builder 
	| panelSpec squeakButtonSpec pharoButtonSpec gemStoneButtonSpec |
	panelSpec := builder pluggablePanelSpec new.
	squeakButtonSpec := builder pluggableCheckBoxSpec new.
	pharoButtonSpec := builder pluggableCheckBoxSpec new.
	gemStoneButtonSpec := builder pluggableCheckBoxSpec new.
	panelSpec
		model: self logic;
		frame: self class platformPanelFrame;
		children: OrderedCollection new.
	squeakButtonSpec
		model: self logic;
		label: #squeakCheckBoxLabel;
		frame: self class squeakCheckBoxFrame;
		state: #useSqueakPlatform;
		action: #toggleUseSqueakPlatform.
	pharoButtonSpec
		model: self logic;
		label: #pharoCheckBoxLabel;
		frame: self class pharoCheckBoxFrame;
		state: #usePharoPlatform;
		action: #toggleUsePharoPlatform.
	gemStoneButtonSpec
		model: self logic;
		label: #gemStoneCheckBoxLabel;
		frame: self class gemStoneCheckBoxFrame;
		state: #useGemStonePlatform;
		action: #toggleUseGemStonePlatform.
	panelSpec children
		add: squeakButtonSpec;
		add: pharoButtonSpec;
		add: gemStoneButtonSpec.
	^ panelSpec