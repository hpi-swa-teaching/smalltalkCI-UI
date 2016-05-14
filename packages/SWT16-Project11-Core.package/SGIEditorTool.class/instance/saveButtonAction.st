constants
saveButtonAction

	| yesButtonSpec noButtonSpec |
	saveDialog := windowBuilder pluggableWindowSpec new.
	yesButtonSpec := windowBuilder pluggableButtonSpec new.
	noButtonSpec := windowBuilder pluggableButtonSpec new.
		
 	saveDialog 
		model: self;
		label: '.Ston allready exists, overwrite?';
		extent: 200@100;
		children: OrderedCollection new;
		isDialog: true.

	yesButtonSpec
		model: self;
		label: #saveButtonLabel;
		frame: (0@0 corner: 0.5@1);
		action: #writeSton.
		
	noButtonSpec
		model: self;
		label: #closeButtonLabel ;
		frame: (0.5@0 corner: 1@1);
		action: #exitSaveWindow.
	
	saveDialog children add: yesButtonSpec.
	saveDialog children add: noButtonSpec.
		
	ToolBuilder default open: ( windowBuilder build: saveDialog).
