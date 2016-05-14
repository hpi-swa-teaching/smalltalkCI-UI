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
		frame: (0@0 corner: 0.5@1);
		action: #saveButtonAction.
	
	closeButtonSpec
		model: self;
		label: #closeButtonLabel;
		frame: (0.5@0 corner: 1@1);
		action: #closeButtonAction.		
		
	panelSpec children add: saveButtonSpec.
	panelSpec children add: closeButtonSpec.
	
	 ^ panelSpec.