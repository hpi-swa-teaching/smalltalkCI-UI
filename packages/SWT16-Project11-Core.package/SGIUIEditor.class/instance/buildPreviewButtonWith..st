user-interface
buildPreviewButtonWith: builder
	| panelSpec previewButtonSpec |	
	panelSpec := builder pluggablePanelSpec new.
	previewButtonSpec := builder pluggableButtonSpec new.

	panelSpec
		model: self logic;
		frame: self class previewPanelFrame;
		children: OrderedCollection new.
	previewButtonSpec
		model: self logic;
		label: self class previewButtonLabel;
		action: [self logic previewButtonAction];
		frame: self class previewButtonFrame.
	panelSpec children
		add: previewButtonSpec.
	
	 ^ panelSpec