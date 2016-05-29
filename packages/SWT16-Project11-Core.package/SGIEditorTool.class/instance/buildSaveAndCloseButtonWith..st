user interface
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
		frame: (0@0 corner: 0.5@1).
	
	closeButtonSpec
		model: self;
		label: #closeButtonLabel;
		action: #closeButtonAction;
		frame: (0.5@0 corner: 1@1).
		
	panelSpec children 
		add: saveButtonSpec;
		add: closeButtonSpec.
	
	 ^ panelSpec