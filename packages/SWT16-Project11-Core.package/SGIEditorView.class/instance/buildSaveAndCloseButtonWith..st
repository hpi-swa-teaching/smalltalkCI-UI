user-interface
buildSaveAndCloseButtonWith: builder
	| panelSpec saveButtonSpec closeButtonSpec |	
	panelSpec := builder pluggablePanelSpec new.
	saveButtonSpec := builder pluggableButtonSpec new.
	closeButtonSpec := builder pluggableButtonSpec new.

	panelSpec
		model: self;
		frame: self class saveAndCloseButtonFrame;
		children: OrderedCollection new.
	saveButtonSpec
		model: self;
		label: #saveButtonLabel;
		action: #saveButtonAction;
		frame: self class saveButtonFrame.
	closeButtonSpec
		model: self;
		label: #closeButtonLabel;
		action: #closeButtonAction;
		frame: self class closeButtonFrame.
	panelSpec children
		add: saveButtonSpec;
		add: closeButtonSpec.
	
	 ^ panelSpec