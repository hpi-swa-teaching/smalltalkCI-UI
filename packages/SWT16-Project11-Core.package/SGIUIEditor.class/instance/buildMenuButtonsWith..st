user-interface
buildMenuButtonsWith: builder 
	| panelSpec saveButtonSpec openButtonSpec previewButtonSpec |
	panelSpec := builder pluggablePanelSpec new.
	previewButtonSpec := builder pluggableButtonSpec new.
	openButtonSpec := builder pluggableButtonSpec new.
	saveButtonSpec := builder pluggableButtonSpec new.
	panelSpec
		model: self logic;
		frame: self class menuButtonsFrame;
		children: OrderedCollection new.
	previewButtonSpec
		model: self logic;
		label: self class previewButtonLabel;
		action: [ self logic previewButtonAction ];
		frame: self class previewButtonFrame.
	openButtonSpec
		model: self logic;
		label: self class openButtonLabel;
		action: [ self logic openButtonAction ];
		frame: self class openButtonFrame.
	saveButtonSpec
		model: self logic;
		label: self class saveButtonLabel;
		action: [ self logic saveButtonAction ];
		frame: self class saveButtonFrame.
	panelSpec children
		add: previewButtonSpec;
		add: openButtonSpec;
		add: saveButtonSpec.
	^ panelSpec